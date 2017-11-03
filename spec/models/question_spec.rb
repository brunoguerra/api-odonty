require 'rails_helper'

RSpec.describe Question, type: :model do
  it { should validate_presence_of(:description)}
  it { should validate_presence_of(:question_type)}

  context "if have text on question type" do
    before { allow(subject).to receive(:has_text_on_question_type?).and_return(true) }
    it { should validate_presence_of(:auxiliar_text) }
  end

  context "if haven't any text on question type" do
    before { allow(subject).to receive(:has_text_on_question_type?).and_return(false) }
    it { should_not validate_presence_of(:auxiliar_text) }
  end

  context "if is an alert" do
    before { allow(subject).to receive(:is_an_alert?).and_return(true) }
    it { should validate_presence_of(:is_an_alert_when) }
    it { should validate_presence_of(:alert_text) }
  end

  context "if is not an alert" do
    before { allow(subject).to receive(:is_an_alert?).and_return(false) }
    it { should_not validate_presence_of(:is_an_alert_when) }
    it { should_not validate_presence_of(:alert_text) }
  end

  it "it should associate a recently created question to all existing anamnesis models" do
    FactoryBot.build(:anamnesis_model).save
    question = FactoryBot.build(:question)
    question.save
    expect(AnamnesisModel.count).to eq(AnamnesisModelQuestion.where(:question_id => question.id).count)
  end

end

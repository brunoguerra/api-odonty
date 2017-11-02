Question.create(
  description: 'Quando foi sua última vez que veio ao dentista? Como foi o atendimento?',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'Quantas vezes por dia escova os dentes?',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'Informações adicionais:',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'A criança nasceu com parto normal ou cesariana?',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'Peso ao nascer?',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'Qual o perfil? (côncavo, convexo ou reto)',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'Qual a sobremordida? (aumentada, normal ou aberta)',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'Qual o trespasse horizontal? (aumentado, normal ou negativo)',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'O canino direito apresenta relação de: classe I, classe II, classe III ou topo?',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'O canino esquerdo apresenta relação de: classe I, classe II, classe III ou topo?',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'Qual a classe do paciente? (Classe I, II ou III)',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'Qual a pressão arterial do paciente?',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'Qual frequência respiratória por minuto do paciente?',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'Qual a frequência cardíaca por minuto(bpm) do paciente?',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'Qual a frequência cardíaca por minuto(bpm) do paciente?',
  is_an_alert: false,
  question_type: Question.question_types[:only_text]
)

Question.create(
  description: 'Usa creme dental?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Já teve hemorragia diagnosticada?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Risco de hemorragia',
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Possui asma?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Asmático',
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Possui anemia?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Anêmico',
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Possui azia, má digestão, refluxo, úlcera ou gastrite?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Apresenta sangramento a escovação?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Sente seus dentes moles?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Tem o hábito de roer unha ou morder objetos (lápis, caneta, etc.)?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Possui depressão?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Está ou esteve em tratamento psicológico?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Escuta algum estalido ao abrir a boca?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)


Question.create(
  description: 'Tem dificuldade de abrir a boca?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Sente dores no ouvido, cabeça, face, nuca ou pescoço?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)


Question.create(
  description: 'Possui algum antecedente de febre reumática?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Possui algum antecendente de endocardite bacteriana?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Antecedente de endocardite bacteriana',
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Já se submeteu à Profilaxia / Prevenção (limpeza, flúor, selante oclusal, etc.)?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Seus dentes são sensíveis a mudança de temperatura ou a alimentos doces?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Está amamentando?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Realizou pré natal?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Realiza(ou) aleitamento materno?',
  is_an_alert: false,
  question_type: Question.question_types[:yes_no_i_dont_know]
)

Question.create(
  description: 'Faz uso de antisséptico bucal?',
  is_an_alert: false,
  auxiliar_text: 'Quantas vezes por dia?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Usa fio dental?',
  is_an_alert: false,
  auxiliar_text: 'Quantas vezes por semana?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Está em tratamento médico?',
  is_an_alert: false,
  auxiliar_text: 'Especifique:',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Está usando medicação?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Toma',
  auxiliar_text: 'Qual(is)?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui alguma alergia? (Como penicilinas, AAS ou outra)',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Alérgico a',
  auxiliar_text: 'Especifique:',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Já esteve internado?',
  is_an_alert: false,
  auxiliar_text: 'Quando? Qual motivo?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui alguma alteração sanguínea?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Alteração sanguínea',
  auxiliar_text: 'Qual?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui alguma alteração cardiovascular?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Alteração cardíaca',
  auxiliar_text: 'Qual?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Tem pressão alta?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Hipertenso',
  auxiliar_text: 'Controlada ou não controlada?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui diabetes?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Diabético',
  auxiliar_text: 'Tipo? Controlado ou não-controlado?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui alguma disfunção hepática?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Disfunção hepática',
  auxiliar_text: 'Qual?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Apresenta alguma disfunção renal?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Problema renal',
  auxiliar_text: 'Qual?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui alguma disfunção respiratória?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Problema respiratório',
  auxiliar_text: 'Qual?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui alguma alteração óssea?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Alteração óssea',
  auxiliar_text: 'Qual?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui alguma doença transmissível? (HIV, Hepatite, outra)',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Doença transmissível',
  auxiliar_text: 'Qual?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui câncer?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Câncer',
  auxiliar_text: 'Qual? Que tratamento foi utilizado?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui alguma outra doença/síndrome não mencionada?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Doença',
  auxiliar_text: 'Qual?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Já sofreu alguma reação alérgica ao receber anestesia?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Alérgico ao anestésico',
  auxiliar_text: 'Qual anestésico?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui mau hálito?',
  is_an_alert: false,
  auxiliar_text: 'Quando?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Fumante?',
  is_an_alert: false,
  auxiliar_text: 'Há quanto tempo? Quantos cigarros por dia?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Range os dentes?',
  is_an_alert: false,
  auxiliar_text: 'Quando?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)


Question.create(
  description: 'Tem hábito de tomar café ou refrigerantes?',
  is_an_alert: false,
  auxiliar_text: 'Frequência?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Ingere bebidas alcoólicas?',
  is_an_alert: false,
  auxiliar_text: 'Frequência?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Já se submeteu à Periodontia (tratamento gengival)?',
  is_an_alert: false,
  auxiliar_text: 'Quando?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Já se submeteu à Ortodontia (aparelhos e correção)?',
  is_an_alert: false,
  auxiliar_text: 'Quando?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Já se submeteu à Cirurgia Oral (exodontia, freio labial, etc.)?',
  is_an_alert: false,
  auxiliar_text: 'Quando? Sangrou muito?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Já se submeteu à Endodontia (tratamento de canal)?',
  is_an_alert: false,
  auxiliar_text: 'Quando?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Apresenta alguma alteração de língua, lábio e/ou palato?',
  is_an_alert: false,
  auxiliar_text: 'Onde? Qual?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Está grávida?',
  is_an_alert: true,
  is_an_alert_when: Question.is_an_alert_whens[:yes],
  alert_text: 'Grávida',
  auxiliar_text: 'Quantos meses?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Toma anticoncepcional?',
  is_an_alert: false,
  auxiliar_text: 'Qual?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Realiza(ou) aleitamento materno?',
  is_an_alert: false,
  auxiliar_text: 'Quanto tempo?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Realiza(ou) o uso de mamadeira ou chupeta?',
  is_an_alert: false,
  auxiliar_text: 'A quanto tempo?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Realiza(ou) sucção de dedo ou lábio?',
  is_an_alert: false,
  auxiliar_text: 'A quanto tempo?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui mordida cruzada?',
  is_an_alert: false,
  auxiliar_text: 'Em que região? (anterior, post…ior, unilateral ou bilateral)',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui desvio de linha média?',
  is_an_alert: false,
  auxiliar_text: 'Superior ou Inferior? Para qual lado?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'O paciente possiu alguma alteração ganglionar?',
  is_an_alert: false,
  auxiliar_text: 'Em que região?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Apresenta outra alteração na face não mencionada?',
  is_an_alert: false,
  auxiliar_text: 'Onde? Qual?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Usa drogas?',
  is_an_alert: false,
  auxiliar_text: 'Qual(is)? Frequência de uso?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Come muitos doces, balas entre outros?',
  is_an_alert: false,
  auxiliar_text: 'Frequência?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Sente alguma dor nos dentes ou na boca?',
  is_an_alert: false,
  auxiliar_text: 'Onde dói? Intensidade? Frequência? Duração?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

Question.create(
  description: 'Possui o hábito de tabagismo, alcoolismo ou uso de drogas?',
  is_an_alert: false,
  auxiliar_text: 'Qual(is)? Frequência de uso?',
  question_type: Question.question_types[:yes_no_i_dont_know_and_text]
)

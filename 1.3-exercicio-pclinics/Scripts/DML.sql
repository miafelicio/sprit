USE PC_clinics
GO
 
 INSERT INTO CLINICA(razaoSocial, cnpj, enderecoClinica)
 VALUES
 ('gostamos de cachorros e queremos ajudar!!', '32390473728915', 'logo ali, n°7'),
 ('nao sei, so sei que nada sei', '38962818920830', 'ali o bem ali, n°930')
 GO

 INSERT INTO VETERINARIO(nomeVeterinario, crmv, idClinica)
 VALUES
 ('cara bacana', '929384', 2),
 ('carinha gentefina', '347382', 1)
 GO

 INSERT INTO DONO(nomeDono)
 VALUES 
 ('o dono'),
 ('el dueño')
 GO 

 INSERT INTO TIPO_PET(descricaoTipo)
 VALUES
 ('gato'),
 ('cachorro')
 GO

 INSERT INTO RACA(nomeRaca, idTipoPet)
 VALUES
 ('fofo', 1),
 ('cute cute', 2)
 GO

 INSERT INTO PETS(nomePet, idDono, idRaca,dataNascimento)
 VALUES
 ('yoda', 2, 2, '18/12/20'),
 ('dom pedro II', 1, 1, '29/11/18' )
 GO

 INSERT INTO ATENDIMENTOS(descricaoAtendimento, dataAtendimento, idPets, idVeterinario)
 VALUES
 ('o bichin ta bao', '22/09/21', 1, 2),
 ('o bichin ta mais ou menos', '22/09/21', 2, 1)
 GO

 SELECT *FROM ATENDIMENTOS

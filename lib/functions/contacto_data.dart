class Contactos {
  int maxId = 14;
  Map<String, String> sos = {
    "id": "0112",
    "nome": "S.O.S",
    "numero": "112",
    "url":
        "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Fsos.png?alt=media&token=53853bfc-2da8-4663-bfb1-c7da2872f41f"
  };
  List<Map<String, String>> contactos = [
    {"id": "0", "nome": "Consultar Saldo", "numero": "112", "url": "Icon-Euro"},
    {
      "id": "8",
      "nome": "Marilyn Monroe",
      "numero": "900000000",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Fmarilyn_monroe.jpg?alt=media&token=869fc8b3-670b-4d45-bcac-98d461f3e11c"
    },
    {
      "id": "9",
      "nome": "Joe Rogan",
      "numero": "900000001",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2FjoeRogen.jpg?alt=media&token=66f09b86-2de1-4eeb-96fb-1544477755d4"
    },
    {
      "id": "10",
      "nome": "The Rock",
      "numero": "900000002",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Frock.jpg?alt=media&token=9af0236d-cf2f-4de3-9973-c6e18806d1ad"
    },
    {
      "id": "11",
      "nome": "Facho de Esquerda",
      "numero": "900000003",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2FfachoDeEsquerda.jpg?alt=media&token=75156ef7-be68-49f1-abc3-8780e38c6d3b"
    },
    {
      "id": "12",
      "nome": "Stalin da Tuga",
      "numero": "900000004",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Fstalin.jpg?alt=media&token=76b5fc3e-13c3-416e-b84e-ec7109cde519"
    },
    {
      "id": "13",
      "nome": "Até gosta do Facho",
      "numero": "900000005",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2FFacho.jpg?alt=media&token=c4532fe2-a3b5-4ce5-b4a7-fa8adf63d636"
    },
    {
      "id": "14",
      "nome": "Vitória dos outros",
      "numero": "900000006",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Fvitória_outros.jpg?alt=media&token=4f747be3-79b1-4649-b0c9-61b8b88442cd"
    }
  ];
  List<Map<String, String>> registoChamadas = [
    {
      "id": "8",
      "nome": "Marilyn Monroe",
      "numero": "900000000",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Fmarilyn_monroe.jpg?alt=media&token=869fc8b3-670b-4d45-bcac-98d461f3e11c",
      "tipo": "atendida",
      "data": "2 de abril 00:00"
    },
    {
      "id": "9",
      "nome": "Joe Rogan",
      "numero": "900000001",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2FjoeRogen.jpg?alt=media&token=66f09b86-2de1-4eeb-96fb-1544477755d4",
      "tipo": "nAtendida",
      "data": "10 de abril 10:00"
    },
    {
      "id": "9",
      "nome": "Joe Rogan",
      "numero": "900000001",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2FjoeRogen.jpg?alt=media&token=66f09b86-2de1-4eeb-96fb-1544477755d4",
      "tipo": "nAtendida",
      "data": "10 de abril 10:00"
    },
    {
      "id": "9",
      "nome": "Joe Rogan",
      "numero": "900000001",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2FjoeRogen.jpg?alt=media&token=66f09b86-2de1-4eeb-96fb-1544477755d4",
      "tipo": "nAtendida",
      "data": "10 de abril 10:00"
    },
    {
      "id": "9",
      "nome": "Joe Rogan",
      "numero": "900000001",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2FjoeRogen.jpg?alt=media&token=66f09b86-2de1-4eeb-96fb-1544477755d4",
      "tipo": "nAtendida",
      "data": "10 de abril 10:00"
    },
    {
      "id": "10",
      "nome": "The Rock",
      "numero": "900000002",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Frock.jpg?alt=media&token=9af0236d-cf2f-4de3-9973-c6e18806d1ad",
      "tipo": "atendida",
      "data": "10 de abril 14:00"
    },
    {
      "id": "11",
      "nome": "Facho de Esquerda",
      "numero": "900000003",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2FfachoDeEsquerda.jpg?alt=media&token=75156ef7-be68-49f1-abc3-8780e38c6d3b",
      "tipo": "atendida",
      "data": "10 de abril 15:00"
    },
    {
      "id": "12",
      "nome": "Stalin da Tuga",
      "numero": "900000004",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Fstalin.jpg?alt=media&token=76b5fc3e-13c3-416e-b84e-ec7109cde519",
      "tipo": "atendida",
      "data": "11 de abril 11:00"
    },
    {
      "id": "13",
      "nome": "Até gosta do Facho",
      "numero": "900000005",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2FFacho.jpg?alt=media&token=c4532fe2-a3b5-4ce5-b4a7-fa8adf63d636",
      "tipo": "recusada",
      "data": "11 de abril 20:00"
    },
    {
      "id": "14",
      "nome": "Vitória dos outros",
      "numero": "900000006",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Fvitória_outros.jpg?alt=media&token=4f747be3-79b1-4649-b0c9-61b8b88442cd",
      "tipo": "nAtendida",
      "data": "12 de abril 10:00"
    },
    {
      "id": "14",
      "nome": "Vitória dos outros",
      "numero": "900000006",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Fvitória_outros.jpg?alt=media&token=4f747be3-79b1-4649-b0c9-61b8b88442cd",
      "tipo": "nAtendida",
      "data": "12 de abril 10:00"
    },
    {
      "id": "14",
      "nome": "Vitória dos outros",
      "numero": "900000006",
      "url":
          "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Fvitória_outros.jpg?alt=media&token=4f747be3-79b1-4649-b0c9-61b8b88442cd",
      "tipo": "nAtendida",
      "data": "12 de abril 10:00"
    }
  ];
  List<Map<String, String>> getContactos() {
    return contactos;
  }

  List<Map<String, String>> getRegistoChamadas() {
    return registoChamadas;
  }
}

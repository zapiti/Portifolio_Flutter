

enum TypeQuestion {
   LOAD,BIA,MYQUESTION,PIECHART,LINECHART,BARCHART,YOUTUBE
}


class Questions {
   TypeQuestion type;
   String menssagem;

  Questions({TypeQuestion type,String menssagem}){
    this.type = type;
    this.menssagem = menssagem;
  }
}
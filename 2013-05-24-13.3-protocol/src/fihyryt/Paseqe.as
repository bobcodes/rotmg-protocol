package fihyryt
{
   import komawowag.Silikyta;
   import kyco.Nun;
   import bidav.Duwuweb;
   import nago.Vadotele;
   import potogi.Zuvu;
   import wegyluke.Vude;
   import wegyluke.Hez;
   import wegyluke.Nifu;
   import wegyluke.Cowymute;
   import wegyluke.Zef;
   import wegyluke.Rory;
   import cicohi.Hahahi;
   import cicohi.Cabab;


   public class Paseqe extends Object implements Silikyta
   {
      public function Paseqe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var cemohoqal:Nun;

      public var mediatorMap:Duwuweb;

      public var register:Vadotele;

      public function configure() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Zuvu = null;
         this.cemohoqal.map(Vude).pybe();
         this.cemohoqal.map(Hez).pybe();
         this.cemohoqal.map(Nifu).pybe();
         this.cemohoqal.map(Cowymute).pybe();
         this.cemohoqal.map(Zef).pybe();
         this.cemohoqal.map(Rory).pybe();
         this.mediatorMap.map(Hahahi).zusu(Cabab);
         _loc1_=new Zuvu();
         _loc1_.name="closeDialogs";
         _loc1_.description="closes all open dialogs";
         this.register.dispatch(_loc1_,this.cemohoqal.getInstance(Cowymute));
         return;
      }
   }

}
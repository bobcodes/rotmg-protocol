package wenono
{
   import tytojonib.Kyjefe;
   import waryp.CharacterSelectionAndNewsScreen;
   import lemugo.Wokycuku;
   import pomujukir.Cuqoseze;
   import pomujukir.Bemivu;
   import dicyl.Sytidyha;
   import pusy.Sosab;
   import pusy.Lyfezy;
   import pomujukir.Hygawulil;
   import fodopud.Veleda;
   import fodopud.Zicu;
   import fodopud.Gyba;
   import jufu.Jawojicyw;
   import suzen.Kodufanin;
   import com.company.util.Zycu;
   import aaa.RotmgParameters.RotmgParameters;
   import waryp.Letu;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import wahyqise.Gecekat;


   public class Rimujemyj extends Kyjefe
   {
      public function Rimujemyj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CharacterSelectionAndNewsScreen;

      public var kejisacok:Wokycuku;

      public var taja:Cuqoseze;

      public var syfu:Bemivu;

      public var naga:Sytidyha;

      public var chooseName:Sosab;

      public var foryc:Lyfezy;

      public var fiha:Hygawulil;

      public var ceranahaq:Veleda;

      public var zuka:Zicu;

      public var rup:Gyba;

      public var lalabe:Jawojicyw;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.roturosu();
         this.view.initialize(this.kejisacok);
         this.view.close.add(this.lyb);
         this.view.newCharacter.add(this.qoc);
         this.view.tucucu.add(this.qoc);
         this.view.chooseName.add(this.begen);
         this.view.naga.add(this.jawijefa);
         this.fiha.dispatch("/currentCharScreen");
         this.foryc.add(this.saresyho);
         this.zuka.add(this.fijerah);
         this.rup.add(this.typ);
         this.ceranahaq.dispatch();
         return;
      }

      private function typ() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.totusek();
         return;
      }

      private function fijerah() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.razagysu();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.foryc.remove(this.saresyho);
         this.zuka.remove(this.fijerah);
         this.view.close.remove(this.lyb);
         this.view.newCharacter.remove(this.qoc);
         this.view.chooseName.remove(this.begen);
         this.view.tucucu.remove(this.qoc);
         this.view.naga.remove(this.jawijefa);
         return;
      }

      private function saresyho(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.setName(param1);
         return;
      }

      private function roturosu() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Kodufanin = null;
         var _loc1_:String = Zycu.gij();
         if(RotmgParameters.data_.lastDailyAnalytics!=_loc1_)
         {
            _loc2_=new Kodufanin();
            _loc2_.category="joinDate";
            _loc2_.hukepej=RotmgParameters.data_.joinDate;
            this.taja.dispatch(_loc2_);
            RotmgParameters.data_.lastDailyAnalytics=_loc1_;
            RotmgParameters.save();
         }
         return;
      }

      private function qoc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.syfu.dispatch(new Letu());
         return;
      }

      private function lyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.syfu.dispatch(new TitleView());
         return;
      }

      private function begen() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.chooseName.dispatch();
         return;
      }

      private function jawijefa() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:SavedCharacter = this.kejisacok.humoho(0);
         this.kejisacok.lobuwyjer=_loc1_.charId();
         var _loc2_:Kodufanin = new Kodufanin();
         _loc2_.category="character";
         _loc2_.hukepej="select";
         _loc2_.label=_loc1_.kygyba();
         _loc2_.value=_loc1_.level();
         this.taja.dispatch(_loc2_);
         var _loc3_:Gecekat = new Gecekat();
         _loc3_.tumap=false;
         _loc3_.charId=_loc1_.charId();
         _loc3_.jecoryt=true;
         this.naga.dispatch(_loc3_);
         return;
      }
   }

}
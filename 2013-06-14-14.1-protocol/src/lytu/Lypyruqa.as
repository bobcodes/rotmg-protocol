package lytu
{
   import wipivyv.Memysoh;
   import lemugo.Wokycuku;
   import pomujukir.Cuqoseze;
   import vilova.Cetugev;
   import qudypane.Hawuruje;
   import gycu.Feliro;
   import lyhek.Cumezyl;
   import lyhek.Gyfuca;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import suzen.Kodufanin;
   import com.company.assembleegameclient.parameters.Parameters;
   import gycu.Begotyl;
   import gycu.Levoje;


   public class Lypyruqa extends Object
   {
      public function Lypyruqa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var death:Memysoh;

      public var player:Wokycuku;

      public var taja:Cuqoseze;

      public var zop:Cetugev;

      public var duv:Hawuruje;

      public var bilizaw:Feliro;

      private var zuki:Cumezyl;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zuki=new Gyfuca(this.death.accountId_,this.death.charId_);
         this.gomori();
         this.hohe();
         this.hurekikoj();
         return;
      }

      private function gomori() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:SavedCharacter = this.player.zana(this.death.charId_);
         var _loc2_:int = _loc1_?_loc1_.level():0;
         var _loc3_:Kodufanin = new Kodufanin();
         _loc3_.category="killedBy";
         _loc3_.hukepej=this.death.killedBy_;
         _loc3_.value=_loc2_;
         this.taja.dispatch(_loc3_);
         return;
      }

      private function hohe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Parameters.data_.needsRandomRealm=false;
         Parameters.save();
         return;
      }

      private function hurekikoj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.player.sosimu()==-1)
         {
            this.guzyhobah();
         }
         else
         {
            this.duv.dispatch(this.zuki);
         }
         return;
      }

      private function guzyhobah() : void {
         var [OFS2]_loc2_:* = [/OFS]true;
         var [OFS3]_loc3_:* = [/OFS]false;
         var [OFS16]_loc1_:Begotyl = [/OFS][OFS9]new [/OFS][OFS9]Begotyl[/OFS][OFS9]([/OFS][OFS9])[/OFS];
         [OFS17]_loc1_[/OFS].[OFS22]add[/OFS][OFS22]([/OFS]this.[OFS19]zop[/OFS][OFS22])[/OFS];
         [OFS25]_loc1_[/OFS].[OFS41]add[/OFS][OFS41]([/OFS][OFS37]new [/OFS][OFS37]Levoje[/OFS][OFS37]([/OFS]this.[OFS30]duv[/OFS],this.[OFS34]zuki[/OFS][OFS37])[/OFS][OFS41])[/OFS];
         this.[OFS45]bilizaw[/OFS].[OFS49]add[/OFS][OFS49]([/OFS][OFS48]_loc1_[/OFS][OFS49])[/OFS];
         [OFS52]_loc1_[/OFS].[OFS53]start[/OFS][OFS53]([/OFS][OFS53])[/OFS];
         [OFS57]return[/OFS];
      }
   }

}
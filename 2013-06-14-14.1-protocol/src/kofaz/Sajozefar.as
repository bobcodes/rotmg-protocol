package kofaz
{
   import tytojonib.Kyjefe;
   import com.company.assembleegameclient.game.GameSprite;
   import dicyl.Kumus;
   import pomujukir.Wizuwub;
   import pomujukir.Kovi;
   import pomujukir.Bemivu;
   import dicyl.Sytidyha;
   import lemugo.Wokycuku;
   import dicyl.Sed;
   import lemugo.Kaqywi;
   import jufu.Jawojicyw;
   import cizagamym.Lebovas;
   import qirola.Diby;
   import pusy.Fuqeny;
   import pusy.Mun;
   import pusy.Riquzesi;
   import pomujukir.Hygawulil;
   import fodopud.Zicu;
   import fodopud.Gyba;
   import fodopud.Veleda;
   import lafilow.Modokopy;
   import car.Levoge;
   import fodopud.Gebohuk;
   import jyhyzujyw.Zisof;
   import tezahusaq.Tukico;
   import huv.Barisyz;
   import wavybyjec.Sucy;
   import wahyqise.Gecekat;
   import com.company.assembleegameclient.objects.Player;


   public class Sajozefar extends Kyjefe
   {
      public function Sajozefar() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:GameSprite;

      public var zocezuzi:Kumus;

      public var luzej:Wizuwub;

      public var hus:Kovi;

      public var syfu:Bemivu;

      public var naga:Sytidyha;

      public var kejisacok:Wokycuku;

      public var dacasoze:Sed;

      public var fisokami:Kaqywi;

      public var wusoces:Jawojicyw;

      public var closeDialogs:Lebovas;

      public var bilizaw:Diby;

      public var gulusev:Fuqeny;

      public var dyj:Mun;

      public var vizuke:Riquzesi;

      public var lom:Hygawulil;

      public var zuka:Zicu;

      public var rup:Gyba;

      public var ceranahaq:Veleda;

      public var vupas:Modokopy;

      public var nuvet:Levoge;

      public var byfybuvu:Gebohuk;

      public var fucel:Zisof;

      public var rofediqy:Tukico;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rofediqy.dispatch();
         this.view.nuvet=this.nuvet;
         this.zocezuzi.add(this.selyr);
         hypasebu(Barisyz.RECONNECT,this.kunalybo);
         this.view.bomivul.add(this.how);
         this.view.gisid.add(this.zyf);
         this.vizuke.add(this.hojyvura);
         this.fucel.add(this.viziza);
         this.view.bilizaw.add(this.cemot);
         this.view.closed.add(this.nydegazeq);
         this.view.fisokami=this.fisokami;
         this.view.wusoces=this.wusoces;
         this.view.connect();
         this.lom.dispatch("/gameStarted");
         this.view.vupas=this.vupas;
         this.view.hamymol.add(this.ced);
         return;
      }

      private function ced() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sucy = this.nuvet.ripazys();
         if(_loc1_)
         {
            this.byfybuvu.dispatch(_loc1_.packageID);
         }
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.hamymol.remove(this.ced);
         this.zocezuzi.remove(this.selyr);
         fyfagoku(Barisyz.RECONNECT,this.kunalybo);
         this.view.bomivul.remove(this.how);
         this.view.gisid.remove(this.zyf);
         this.vizuke.remove(this.hojyvura);
         this.zuka.remove(this.fijerah);
         this.rup.remove(this.typ);
         this.view.closed.remove(this.nydegazeq);
         this.view.bilizaw.remove(this.cemot);
         this.view.disconnect();
         return;
      }

      private function cemot(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.bilizaw.biga(param1,param2);
         return;
      }

      public function selyr(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.mui_.setEnablePlayerInput(param1);
         return;
      }

      private function fijerah() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.mywysopaj();
         return;
      }

      private function typ() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.qutydig();
         return;
      }

      private function nydegazeq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         this.dacasoze.dispatch();
         return;
      }

      private function kunalybo(param1:Barisyz) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.view.isEditor)
         {
            return;
         }
         var _loc2_:Gecekat = new Gecekat();
         _loc2_.server=param1.server_;
         _loc2_.nipiz=param1.gameId_;
         _loc2_.tumap=param1.sivakykad;
         _loc2_.charId=param1.charId_;
         _loc2_.zad=param1.keyTime_;
         _loc2_.key=param1.key_;
         _loc2_.wyca=param1.isFromArena_;
         this.naga.dispatch(_loc2_);
         return;
      }

      private function how() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gulusev.dispatch(this.view);
         this.zuka.add(this.fijerah);
         this.rup.add(this.typ);
         this.ceranahaq.dispatch();
         return;
      }

      private function zyf(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dyj.dispatch(param1);
         return;
      }

      private function hojyvura() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.vizuke();
         return;
      }

      private function viziza(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.qynuqetav(param1);
         return;
      }
   }

}
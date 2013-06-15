package hodydod
{
   import hunavefeg.Depyrew;
   import dyca.Mes;
   import pune.Myvilik;
   import hunavefeg.Hyne;
   import flash.display.DisplayObjectContainer;
   import cigo.Luj;
   import donaqyzas.Rabymuse;


   public class Bomedypu extends Object
   {
      public function Bomedypu(param1:Hyne, param2:Myvilik) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.nyti=param1.jok(this);
         this.vybility=param1.difas;
         this.riceme=param2;
         param1.wumeci.cybif(this.destroy);
         this.init();
         return;
      }

      private const mohabahi:String = Rabymuse.create(Bomedypu);

      private var nyti:Depyrew;

      private var vybility:Mes;

      private var riceme:Myvilik;

      private var hudapy:Hyne;

      public function toString() : String {
         return this.mohabahi;
      }

      private function init() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:DisplayObjectContainer = null;
         for each (_loc1_ in this.riceme.jod)
         {
            this.nyti.debug("Adding context existence event listener to container {0}",[_loc1_]);
            _loc1_.addEventListener(ModularContextEvent.gyg,this.hufoqi);
         }
         this.riceme.addEventListener(Luj.zav,this.dajygi);
         this.riceme.addEventListener(Luj.jajah,this.kyfaqala);
         return;
      }

      private function destroy() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:DisplayObjectContainer = null;
         for each (_loc1_ in this.riceme.jod)
         {
            this.nyti.debug("Removing context existence event listener from container {0}",[_loc1_]);
            _loc1_.removeEventListener(ModularContextEvent.gyg,this.hufoqi);
         }
         this.riceme.removeEventListener(Luj.zav,this.dajygi);
         this.riceme.removeEventListener(Luj.jajah,this.kyfaqala);
         if(this.hudapy)
         {
            this.nyti.debug("Unlinking parent injector for child context {0}",[this.hudapy]);
            this.hudapy.difas.siroj=null;
         }
         return;
      }

      private function dajygi(param1:Luj) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nyti.debug("Adding context existence event listener to container {0}",[param1.container]);
         param1.container.addEventListener(ModularContextEvent.gyg,this.hufoqi);
         return;
      }

      private function kyfaqala(param1:Luj) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nyti.debug("Removing context existence event listener from container {0}",[param1.container]);
         param1.container.removeEventListener(ModularContextEvent.gyg,this.hufoqi);
         return;
      }

      private function hufoqi(param1:ModularContextEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.stopImmediatePropagation();
         this.hudapy=param1.context;
         this.nyti.debug("Context existence event caught. Configuring child context {0}",[this.hudapy]);
         this.hudapy.difas.siroj=this.vybility;
         return;
      }
   }

}
package hodydod
{
   import hunavefeg.Depyrew;
   import dyca.Mes;
   import flash.display.DisplayObjectContainer;
   import hunavefeg.Hyne;
   import donaqyzas.Rabymuse;


   public class Kyro extends Object
   {
      public function Kyro(param1:Hyne, param2:DisplayObjectContainer) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.nyti=param1.jok(this);
         this.vybility=param1.difas;
         this.qago=param2;
         param1.wumeci.cybif(this.destroy);
         this.init();
         return;
      }

      private const mohabahi:String = Rabymuse.create(Kyro);

      private var nyti:Depyrew;

      private var vybility:Mes;

      private var qago:DisplayObjectContainer;

      private var hudapy:Hyne;

      public function toString() : String {
         return this.mohabahi;
      }

      private function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nyti.debug("Listening for context existence events on contextView {0}",[this.qago]);
         this.qago.addEventListener(ModularContextEvent.gyg,this.hufoqi);
         return;
      }

      private function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nyti.debug("Removing modular context existence event listener from contextView {0}",[this.qago]);
         this.qago.removeEventListener(ModularContextEvent.gyg,this.hufoqi);
         if(this.hudapy)
         {
            this.nyti.debug("Unlinking parent injector for child context {0}",[this.hudapy]);
            this.hudapy.difas.siroj=null;
         }
         return;
      }

      private function hufoqi(param1:ModularContextEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.stopImmediatePropagation();
         this.hudapy=param1.context;
         this.nyti.debug("Context existence event caught. Configuring child context {0}",[this.hudapy]);
         this.hudapy.difas.siroj=this.vybility;
         return;
      }
   }

}
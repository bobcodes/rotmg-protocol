package lawowikas
{
   import hunavefeg.Qoheqa;
   import hunavefeg.Hyne;
   import dyca.Mes;
   import hunavefeg.Depyrew;
   import flash.display.DisplayObjectContainer;
   import hodydod.ModularContextEvent;
   import pune.Myvilik;
   import hodydod.Bomedypu;
   import hodydod.Kyro;
   import donaqyzas.Rabymuse;


   public class Cyde extends Object implements Qoheqa
   {
      public function Cyde(param1:Boolean=true, param2:Boolean=true) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.feduj=param1;
         this.lekyneh=param2;
         return;
      }

      private const mohabahi:String = Rabymuse.create(Cyde);

      private var qasebe:Hyne;

      private var vybility:Mes;

      private var nyti:Depyrew;

      private var feduj:Boolean;

      private var lekyneh:Boolean;

      public function extend(param1:Hyne) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qasebe=param1;
         this.vybility=param1.difas;
         this.nyti=param1.jok(this);
         this.qasebe.wumeci.tad(this.tad);
         return;
      }

      public function toString() : String {
         return this.mohabahi;
      }

      private function tad() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return;
      }

      private function qijypo() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:DisplayObjectContainer = null;
         if(this.vybility.koky(DisplayObjectContainer))
         {
            this.nyti.debug("Context configured to inherit. Broadcasting existence event...");
            _loc1_=this.vybility.getInstance(DisplayObjectContainer);
            _loc1_.dispatchEvent(new ModularContextEvent(ModularContextEvent.gyg,this.qasebe));
         }
         else
         {
            this.nyti.bec("Context has been configured to inherit dependencies but has no way to do so");
         }
         return;
      }

      private function waqiput() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Myvilik = null;
         var _loc2_:DisplayObjectContainer = null;
         if(this.vybility.koky(Myvilik))
         {
            this.nyti.debug("Context has a ViewManager. Configuring view manager based context existence watcher...");
            _loc1_=this.vybility.getInstance(Myvilik);
         }
         else
         {
            if(this.vybility.koky(DisplayObjectContainer))
            {
               this.nyti.debug("Context has a ContextView. Configuring context view based context existence watcher...");
               _loc2_=this.vybility.getInstance(DisplayObjectContainer);
            }
            else
            {
               this.nyti.bec("Context has been configured to expose its dependencies but has no way to do so");
            }
         }
         return;
      }
   }

}
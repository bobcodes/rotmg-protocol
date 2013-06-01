package vip
{
[CLASS387]   import bikyvym.Mive;
   import bikyvym.Cedymynet;
   import pogefeqeh.Wahovy;
   import bikyvym.Voduzak;
   import flash.display.DisplayObjectContainer;
   import zuly.ModularContextEvent;
   import suzu.Naneciry;
   import zuly.Sasimet;
   import zuly.Kaku;
   import fomykuq.Sedubali;


   public class Suwirohi extends Object implements Mive
   {
      public function Suwirohi(param1:Boolean=true, param2:Boolean=true) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.fipycorop=param1;
         this.vop=param2;
         return;
      }

      private const pubutahic:String = Sedubali.create(Suwirohi);

      private var nagygob:Cedymynet;

      private var qod:Wahovy;

      private var vuwir:Voduzak;

      private var fipycorop:Boolean;

      private var vop:Boolean;

      public function extend(param1:Cedymynet) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nagygob=param1;
         this.qod=param1.viqelo;
         this.vuwir=param1.diruboli(this);
         this.nagygob.sutu.ton(this.ton);
         return;
      }

      public function toString() : String {
         return this.pubutahic;
      }

      private function ton() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return;
      }

      private function moro() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:DisplayObjectContainer = null;
         if(this.qod.kelovohiv(DisplayObjectContainer))
         {
            this.vuwir.debug("Context configured to inherit. Broadcasting existence event...");
            _loc1_=this.qod.getInstance(DisplayObjectContainer);
            _loc1_.dispatchEvent(new ModularContextEvent(ModularContextEvent.tugy,this.nagygob));
         }
         else
         {
            this.vuwir.zygugoqi("Context has been configured to inherit dependencies but has no way to do so");
         }
         return;
      }

      private function ranomazif() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Naneciry = null;
         var _loc2_:DisplayObjectContainer = null;
         if(this.qod.kelovohiv(Naneciry))
         {
            this.vuwir.debug("Context has a ViewManager. Configuring view manager based context existence watcher...");
            _loc1_=this.qod.getInstance(Naneciry);
         }
         else
         {
            if(this.qod.kelovohiv(DisplayObjectContainer))
            {
               this.vuwir.debug("Context has a ContextView. Configuring context view based context existence watcher...");
               _loc2_=this.qod.getInstance(DisplayObjectContainer);
            }
            else
            {
               this.vuwir.zygugoqi("Context has been configured to expose its dependencies but has no way to do so");
            }
         }
         return;
      }
   }
[/CLASS]
}
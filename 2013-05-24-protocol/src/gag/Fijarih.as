package gag
{
   import flash.errors.IllegalOperationError;
   import tulunyno.Hugyqufyq;


   public class Fijarih extends Object implements Bysyg
   {
      public function Fijarih() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var qib:Lucy;

      private var zirotor:Vulavu;

      private var veke:Vulavu;

      private var kyjisuzu:Boolean;

      private var himibaqi:Boolean;

      private var dufivas:Boolean;

      private var teryr:String;

      public final function start() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.kyjisuzu)
         {
            this.kyjisuzu=true;
            this.startTask();
         }
         return;
      }

      public final function reset() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.kyjisuzu)
         {
            this.kyjisuzu=false;
            if(!this.himibaqi)
            {
               throw new IllegalOperationError("Unable to Task.reset() when a task is ongoing");
            }
         }
         this.onReset();
         return;
      }

      protected function startTask() : void {
         return;
      }

      protected function onReset() : void {
         return;
      }

      protected final function syjavimu(param1:Boolean, param2:String="") : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.dufivas=param1;
         this.teryr=param2;
         this.himibaqi=true;
         return;
      }

      public final function get deruhidy() : Hugyqufyq {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.qib=(this.qib)||(new Lucy());
      }

      public final function get davifuju() : Vulavu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.zirotor=(this.zirotor)||(new Vulavu());
      }

      public final function get lastly() : Vulavu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.veke=(this.veke)||(new Vulavu());
      }

      public function get cotiwipif() : Boolean {
         return this.kyjisuzu;
      }

      public function get rowasu() : Boolean {
         return this.himibaqi;
      }

      public function get jalilezo() : Boolean {
         return this.dufivas;
      }

      public function get error() : String {
         return this.teryr;
      }
   }

}
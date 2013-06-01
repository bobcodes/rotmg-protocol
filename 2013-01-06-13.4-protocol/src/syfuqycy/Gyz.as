package syfuqycy
{
[CLASS52]   import flash.errors.IllegalOperationError;
   import tinava.Dab;


   public class Gyz extends Object implements Motumeq
   {
      public function Gyz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var nobukycy:Runur;

      private var tozomol:Guw;

      private var vowero:Guw;

      private var mecy:Boolean;

      private var pery:Boolean;

      private var fucynew:Boolean;

      private var firaqub:String;

      public final function start() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.mecy)
         {
            this.mecy=true;
            this.startTask();
         }
         return;
      }

      public final function reset() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.mecy)
         {
            this.mecy=false;
            if(!this.pery)
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

      protected final function pylebodyq(param1:Boolean, param2:String="") : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.fucynew=param1;
         this.firaqub=param2;
         this.pery=true;
         return;
      }

      public final function get hywopo() : Dab {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.nobukycy=(this.nobukycy)||(new Runur());
      }

      public final function get gegyco() : Guw {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.tozomol=(this.tozomol)||(new Guw());
      }

      public final function get lastly() : Guw {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.vowero=(this.vowero)||(new Guw());
      }

      public function get dolyfoc() : Boolean {
         return this.mecy;
      }

      public function get pymuvyg() : Boolean {
         return this.pery;
      }

      public function get hisy() : Boolean {
         return this.fucynew;
      }

      public function get error() : String {
         return this.firaqub;
      }
   }
[/CLASS]
}
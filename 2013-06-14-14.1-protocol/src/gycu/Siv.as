package gycu
{
   import flash.errors.IllegalOperationError;
   import mukyrosu.Qanyduk;


   public class Siv extends Object implements Cyqe
   {
      public function Siv() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var cot:Sasepyfar;

      private var qycewyhuz:Tyhoqybi;

      private var bedawyc:Tyhoqybi;

      private var hezolu:Boolean;

      private var tuwucun:Boolean;

      private var weqitug:Boolean;

      private var pacanenak:String;

      public final function start() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.hezolu)
         {
            this.hezolu=true;
            this.startTask();
         }
         return;
      }

      public final function reset() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.hezolu)
         {
            this.hezolu=false;
            if(!this.tuwucun)
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

      protected final function dom(param1:Boolean, param2:String="") : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.weqitug=param1;
         this.pacanenak=param2;
         this.tuwucun=true;
         return;
      }

      public final function get zit() : Qanyduk {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.cot=(this.cot)||(new Sasepyfar());
      }

      public final function get byqato() : Tyhoqybi {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.qycewyhuz=(this.qycewyhuz)||(new Tyhoqybi());
      }

      public final function get lastly() : Tyhoqybi {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.bedawyc=(this.bedawyc)||(new Tyhoqybi());
      }

      public function get wowof() : Boolean {
         return this.hezolu;
      }

      public function get widor() : Boolean {
         return this.tuwucun;
      }

      public function get qifem() : Boolean {
         return this.weqitug;
      }

      public function get error() : String {
         return this.pacanenak;
      }
   }

}
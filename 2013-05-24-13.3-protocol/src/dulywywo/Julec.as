package dulywywo
{
   import __AS3__.vec.Vector;


   public class Julec extends Object
   {
      public function Julec() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cikehe=new Vector.<Command>();
         super();
         return;
      }

      private var cikehe:Vector.<Command>;

      public function bor() : Boolean {
         return this.cikehe.length==0;
      }

      public function hysisuw(param1:Command) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cikehe.push(param1);
         return;
      }

      public function execute() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Command = null;
         for each (_loc1_ in this.cikehe)
         {
            _loc1_.execute();
         }
         return;
      }

      public function unexecute() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Command = null;
         for each (_loc1_ in this.cikehe)
         {
            _loc1_.unexecute();
         }
         return;
      }
   }

}
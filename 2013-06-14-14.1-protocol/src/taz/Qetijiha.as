package taz
{
   import __AS3__.vec.Vector;


   public class Qetijiha extends Object
   {
      public function Qetijiha() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.toqipe=new Vector.<Command>();
         super();
         return;
      }

      private var toqipe:Vector.<Command>;

      public function koqototaz() : Boolean {
         return this.toqipe.length==0;
      }

      public function walur(param1:Command) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.toqipe.push(param1);
         return;
      }

      public function execute() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Command = null;
         for each (_loc1_ in this.toqipe)
         {
            _loc1_.execute();
         }
         return;
      }

      public function unexecute() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Command = null;
         for each (_loc1_ in this.toqipe)
         {
            _loc1_.unexecute();
         }
         return;
      }
   }

}
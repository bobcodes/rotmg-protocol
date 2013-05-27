package kazu
{
   import quqe.Tego;
   import flash.utils.IDataInput;


   public class Cyjugeru extends Tego
   {
      public function Cyjugeru(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var mosakymu:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mosakymu=param1.readInt();
         return;
      }
   }

}
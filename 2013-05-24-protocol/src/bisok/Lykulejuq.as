package bisok
{
   import quqe.Tego;
   import flash.utils.IDataInput;


   public class Lykulejuq extends Tego
   {
      public function Lykulejuq(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var type:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.type=param1.readInt();
         return;
      }
   }

}
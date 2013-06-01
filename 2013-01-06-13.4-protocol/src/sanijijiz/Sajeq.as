package sanijijiz
{
[CLASS1458]   import mywyvuryw.Daqu;
   import flash.utils.IDataInput;


   public class Sajeq extends Daqu
   {
      public function Sajeq(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var pataleg:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pataleg=param1.readInt();
         return;
      }
   }
[/CLASS]
}
package mywyvuryw
{
[CLASS1470]   import flash.utils.IDataInput;


   public class Motacyr extends Daqu
   {
      public function Motacyr(param1:uint, param2:Function) {
         super(param1,param2);
         return;
      }

      public var objectId_:int;

      public var charId_:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.objectId_=param1.readInt();
         this.charId_=param1.readInt();
         return;
      }

      override public function toString() : String {
         return formatToString("CREATE_SUCCESS","objectId_","charId_");
      }
   }
[/CLASS]
}
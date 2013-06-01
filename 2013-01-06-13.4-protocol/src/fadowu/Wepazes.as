package fadowu
{
[CLASS1459]   import flash.utils.IDataOutput;


   public class Wepazes extends Jelo
   {
      public function Wepazes(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var accountListId_:int;

      public var add_:Boolean;

      public var objectId_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.accountListId_);
         param1.writeBoolean(this.add_);
         param1.writeInt(this.objectId_);
         return;
      }

      override public function toString() : String {
         return formatToString("EDITACCOUNTLIST","accountListId_","add_","objectId_");
      }
   }
[/CLASS]
}
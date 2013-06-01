package aaa.rotmg.action
{
   import flash.utils.IDataOutput;


   public class LoadMessage extends OutgoingOnlyNetworkMessage
   {
      public function LoadMessage(param1:uint, param2:Function) {
         super(param1,param2);
         return;
      }

      public var charId_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         param1.writeInt(this.charId_);
         return;
      }

      override public function toString() : String {
         return formatToString("LOAD","charId_");
      }
   }

}
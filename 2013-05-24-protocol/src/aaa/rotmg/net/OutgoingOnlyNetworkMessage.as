package aaa.rotmg.net
{
   import aaa.rotmg.net.NetworkMessage;
   import flash.utils.IDataInput;


   public class OutgoingOnlyNetworkMessage extends NetworkMessage
   {
      public function OutgoingOnlyNetworkMessage(param1:uint, param2:Function) {
         super(param1,param2);
         return;
      }

      override public final function parseFromInput(param1:IDataInput) : void {
         throw new Error("Client should not receive "+id+" messages");
      }
   }

}
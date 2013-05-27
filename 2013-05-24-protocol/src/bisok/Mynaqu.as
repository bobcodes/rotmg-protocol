package bisok
{
   import aaa.rotmg.net.OutgoingOnlyNetworkMessage;
   import cypujavop.Bocuve;
   import flash.utils.IDataOutput;


   public class Mynaqu extends OutgoingOnlyNetworkMessage
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Mynaqu(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.wigyq=new Bocuve();
         super(param1,param2);
         return;
      }

      public static const binuli:int = 0;

      public static const gop:int = 1;

      public var zokubip:int;

      public var peluq:int;

      public var bidugylu:int;

      public var objectId:int;

      public var wigyq:Bocuve;

      public var bymuhok:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeByte(this.zokubip);
         param1.writeInt(this.peluq);
         param1.writeInt(this.bidugylu);
         param1.writeInt(this.objectId);
         this.wigyq.writeToOutput(param1);
         param1.writeByte(this.bymuhok);
         return;
      }
   }

}
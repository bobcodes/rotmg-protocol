package ducojoryn
{
   import firo.Jicogu;
   import dasefezy.Moceq;
   import flash.utils.IDataOutput;


   public class Tawe extends Jicogu
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tawe(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.fir=new Moceq();
         super(param1,param2);
         return;
      }

      public static const bodovob:int = 0;

      public static const byfyvyfeh:int = 1;

      public var sakiduby:int;

      public var ruvawoja:int;

      public var quvy:int;

      public var objectId:int;

      public var fir:Moceq;

      public var vyvy:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeByte(this.sakiduby);
         param1.writeInt(this.ruvawoja);
         param1.writeInt(this.quvy);
         param1.writeInt(this.objectId);
         this.fir.writeToOutput(param1);
         param1.writeByte(this.vyvy);
         return;
      }
   }

}
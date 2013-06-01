package sanijijiz
{
[CLASS941]   import fadowu.Jelo;
   import jyz.Cijala;
   import flash.utils.IDataOutput;


   public class Fyhigu extends Jelo
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Fyhigu(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.jadi=new Cijala();
         super(param1,param2);
         return;
      }

      public static const wucym:int = 0;

      public static const filywygok:int = 1;

      public var fuje:int;

      public var tejy:int;

      public var tol:int;

      public var objectId:int;

      public var jadi:Cijala;

      public var qota:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeByte(this.fuje);
         param1.writeInt(this.tejy);
         param1.writeInt(this.tol);
         param1.writeInt(this.objectId);
         this.jadi.writeToOutput(param1);
         param1.writeByte(this.qota);
         return;
      }
   }
[/CLASS]
}
package fadowu
{
[CLASS1528]   import jyz.Tyji;
   import flash.utils.IDataOutput;


   public class Ruzaba extends Jelo
   {
      public function Ruzaba(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.position_=new Tyji();
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var position_:Tyji;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.time_);
         this.position_.writeToOutput(param1);
         return;
      }

      override public function toString() : String {
         return formatToString("AOEACK","time_","position_");
      }
   }
[/CLASS]
}
package fadowu
{
[CLASS1526]   import jyz.Tyji;
   import flash.utils.IDataOutput;


   public class Vomomyre extends Jelo
   {
      public function Vomomyre(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.position_=new Tyji();
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var position_:Tyji;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeInt(this.time_);
         this.position_.writeToOutput(param1);
         return;
      }

      override public function toString() : String {
         return formatToString("GROUNDDAMAGE","time_","position_");
      }
   }
[/CLASS]
}
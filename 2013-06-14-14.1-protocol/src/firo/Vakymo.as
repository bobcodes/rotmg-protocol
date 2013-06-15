package firo
{
   import dasefezy.Rimukiz;
   import flash.utils.IDataOutput;


   public class Vakymo extends Jicogu
   {
      public function Vakymo(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.position_=new Rimukiz();
         super(param1,param2);
         return;
      }

      public var time_:int;

      public var position_:Rimukiz;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.writeInt(this.time_);
         this.position_.writeToOutput(param1);
         return;
      }

      override public function toString() : String {
         return formatToString("GROUNDDAMAGE","time_","position_");
      }
   }

}
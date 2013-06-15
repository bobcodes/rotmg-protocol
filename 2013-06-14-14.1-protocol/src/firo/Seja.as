package firo
{
   import flash.utils.IDataOutput;


   public class Seja extends Jicogu
   {
      public function Seja(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var charId_:int;

      public var isFromArena_:Boolean;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeInt(this.charId_);
         param1.writeBoolean(this.isFromArena_);
         return;
      }

      override public function toString() : String {
         return formatToString("LOAD","charId_","isFromArena_");
      }
   }

}
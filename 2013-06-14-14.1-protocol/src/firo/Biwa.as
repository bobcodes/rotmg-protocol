package firo
{
   import flash.utils.IDataOutput;


   public class Biwa extends Jicogu
   {
      public function Biwa(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var name_:String;

      public var guildRank_:int;

      override public function writeToOutput(param1:IDataOutput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.writeUTF(this.name_);
         param1.writeInt(this.guildRank_);
         return;
      }

      override public function toString() : String {
         return formatToString("CHANGEGUILDRANK","name_","guildRank_");
      }
   }

}
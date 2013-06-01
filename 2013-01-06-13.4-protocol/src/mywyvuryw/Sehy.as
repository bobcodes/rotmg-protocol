package mywyvuryw
{
[CLASS1438]   import lafol.Zufadazi;
   import flash.utils.IDataInput;


   public class Sehy extends Zufadazi
   {
      public function Sehy(param1:uint, param2:Function=null) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var type:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.type=param1.readInt();
         return;
      }
   }
[/CLASS]
}
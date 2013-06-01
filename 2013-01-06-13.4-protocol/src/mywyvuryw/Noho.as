package mywyvuryw
{
[CLASS1497]   import jyz.Tyji;
   import flash.utils.IDataInput;


   public class Noho extends Daqu
   {
      public function Noho(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.pos_=new Tyji();
         super(param1,param2);
         return;
      }

      public var objectId_:int;

      public var pos_:Tyji;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.objectId_=param1.readInt();
         this.pos_.parseFromInput(param1);
         return;
      }

      override public function toString() : String {
         return formatToString("GOTO","objectId_","pos_");
      }
   }
[/CLASS]
}
package badaja
{
[CLASS1476]   import mywyvuryw.Daqu;
   import flash.utils.IDataInput;


   public class Bawif extends Daqu
   {
      public function Bawif(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         return;
      }

      public var petName:String;

      public var talisy:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.petName=param1.readUTF();
         this.talisy=param1.readInt();
         return;
      }
   }
[/CLASS]
}
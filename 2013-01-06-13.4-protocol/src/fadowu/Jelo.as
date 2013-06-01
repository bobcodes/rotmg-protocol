package fadowu
{
[CLASS939]   import lafol.Zufadazi;
   import flash.utils.IDataInput;


   public class Jelo extends Zufadazi
   {
      public function Jelo(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      override public final function parseFromInput(param1:IDataInput) : void {
         throw new Error("Client should not receive "+id+" messages");
      }
   }
[/CLASS]
}
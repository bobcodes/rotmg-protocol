package kazu
{
   import quqe.Tego;
   import flash.utils.IDataInput;


   public class Beryqaze extends Tego
   {
      public function Beryqaze(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         return;
      }

      public var petName:String;

      public var tovifafo:int;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.petName=param1.readUTF();
         this.tovifafo=param1.readInt();
         return;
      }
   }

}
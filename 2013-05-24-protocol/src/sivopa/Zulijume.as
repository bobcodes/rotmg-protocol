package sivopa
{
   import laho.Byzyji;
   import flash.utils.Dictionary;
   import cuca.Zykitu;
   import cuca.Fon;
   import laho.Lezihej;


   public class Zulijume extends Object implements Byzyji
   {
      public function Zulijume() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const nodug:Dictionary = new Dictionary();

      private const pyvyhuzap:Zykitu = new Caq();

      public function map(param1:Lezihej) : Fon {
         return this.nodug[param1]=(this.nodug[param1])||(new Vefegit(param1));
      }

      public function gukin(param1:Lezihej) : Zykitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return (this.nodug[param1])||(this.pyvyhuzap);
      }
   }

}
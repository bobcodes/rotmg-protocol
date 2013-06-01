package ror
{
   import lagizizoq.Mys;
   import flash.utils.Dictionary;
   import kyco.Nun;
   import laho.Byzyji;
   import cuca.Fon;
   import laho.Lezihej;
   import cuca.Zykitu;


   public class Getahinag extends Object implements Mys
   {
      public function Getahinag(param1:Nun, param2:Byzyji) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.pub=param1;
         this.vuryqe=param2;
         return;
      }

      private const tybo:Dictionary = new Dictionary();

      private var pub:Nun;

      private var vuryqe:Byzyji;

      public function map(param1:Class, param2:Boolean=false) : Fon {
         var _loc3_:Lezihej = this.tybo[param1]=(this.tybo[param1])||(this.cyd(param1,param2));
         return this.vuryqe.map(_loc3_);
      }

      public function gukin(param1:Class) : Zykitu {
         return this.vuryqe.gukin(this.nawu(param1));
      }

      private function cyd(param1:Class, param2:Boolean=false) : Lezihej {
         return new Zycugycoc(this.pub,param1,param2);
      }

      private function nawu(param1:Class) : Lezihej {
         return this.tybo[param1];
      }
   }

}
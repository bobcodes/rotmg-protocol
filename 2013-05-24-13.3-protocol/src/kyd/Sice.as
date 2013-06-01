package kyd
{
   import cuba.Todo;
   import cuba.Description;
   import flash.utils.getQualifiedClassName;


   public class Sice extends Todo
   {
      public function Sice(param1:Class) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         cuwiqytid=param1;
         dyr=getQualifiedClassName(param1);
         return;
      }

      private var dyr:String;

      override public function describeTo(param1:Description) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.appendText("an instance of ").appendText(dyr);
         return;
      }

      private var cuwiqytid:Class;

      override public function matches(param1:Object) : Boolean {
         return param1 is cuwiqytid;
      }
   }

}
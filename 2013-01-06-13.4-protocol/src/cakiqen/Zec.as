package cakiqen
{
[CLASS1389]   import tecif.Vigoviq;
   import tecif.Description;
   import flash.utils.getQualifiedClassName;


   public class Zec extends Vigoviq
   {
      public function Zec(param1:Class) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         qimopipoz=param1;
         honojuv=getQualifiedClassName(param1);
         return;
      }

      private var honojuv:String;

      override public function describeTo(param1:Description) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.appendText("an instance of ").appendText(honojuv);
         return;
      }

      private var qimopipoz:Class;

      override public function matches(param1:Object) : Boolean {
         return param1 is qimopipoz;
      }
   }
[/CLASS]
}
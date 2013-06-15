package wusepiboz
{
   import buf.Kolisywab;
   import buf.Description;
   import flash.utils.getQualifiedClassName;


   public class Hajozehik extends Kolisywab
   {
      public function Hajozehik(param1:Class) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         vite=param1;
         rygujypag=getQualifiedClassName(param1);
         return;
      }

      private var rygujypag:String;

      override public function describeTo(param1:Description) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.appendText("an instance of ").appendText(rygujypag);
         return;
      }

      private var vite:Class;

      override public function matches(param1:Object) : Boolean {
         return param1 is vite;
      }
   }

}
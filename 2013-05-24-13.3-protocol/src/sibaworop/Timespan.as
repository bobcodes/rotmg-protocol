package sibaworop
{
   import __AS3__.vec.Vector;
   import aaa.rotmg.i18n.I18nKeys;


   public class Timespan extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Timespan(param1:String, param2:String) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.name=param1;
         this.id=param2;
         return;
      }

      public static const dojirov:Timespan = new Timespan(I18nKeys.paqeqytod,"week");

      public static const boces:Timespan = new Timespan(I18nKeys.senaqybiw,"month");

      public static const nihepynaq:Timespan = new Timespan(I18nKeys.cyzydo,"all");

      public static const zesaduqy:Vector.<Timespan> = new Vector.<Timespan>(3);

      private var name:String;

      private var id:String;

      public function getName() : String {
         return this.name;
      }

      public function tufu() : String {
         return this.id;
      }
   }

}
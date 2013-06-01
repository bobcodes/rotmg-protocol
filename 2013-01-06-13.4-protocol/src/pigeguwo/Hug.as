package pigeguwo
{
[CLASS1625]

   public class Hug extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hug() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const jujuhiq:uint = 65280;

      public static const hup:uint = 16711680;

      public static const fyje:uint = 16777103;

      public static function lesokury(param1:String, param2:String) : String {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = "<font color=\""+param2+"\">"+param1+"</font>";
         return _loc3_;
      }

      public static function fyzep(param1:uint) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return "<font color=\"#"+param1.toString(16)+"\">";
      }

      public static function pijef() : String {
         return "</font>";
      }

      public static function tucywi(param1:Number) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Number = param1-int(param1);
         return int(_loc2_*10)==0?int(param1).toString():param1.toFixed(1);
      }

      public static function conehody(param1:Number) : uint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1<0)
         {
            return hup;
         }
         if(param1>0)
         {
            return jujuhiq;
         }
         return fyje;
      }
   }
[/CLASS]
}
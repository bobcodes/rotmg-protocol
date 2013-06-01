package fuquqo
{


   public class Lacezuk extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Lacezuk() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const mohyfah:Array = sewe();

      private static var qifatyz:Array = [];

      private static var cofub:Array;

      private static var gifusa:RegExp;

      private static var nomupyd:Object = {};

      private static function sewe() : Array {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = ["Aa","Bb","Cc","Dd","Ee","Ff","Gg","Hh","Ii","Jj","Kk","Ll","Mm","Nn","Oo","Pp","Qq","Rr","Ss","Tt","Uu","Vv","Ww","Xx","Yy","Zz","0o"];
         for each (_loc3_ in _loc2_)
         {
            _loc1_[_loc3_.charCodeAt(0)]=_loc3_.charAt(1);
            _loc1_[_loc3_.charCodeAt(1)]=_loc3_.charAt(1);
         }
         return _loc1_;
      }

      private static function mygih(param1:String) : String {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:* = 0;
         while(_loc3_<param1.length)
         {
            _loc4_=mohyfah[param1.charCodeAt(_loc3_)];
            if(_loc4_!==null)
            {
               _loc2_.push(_loc4_);
            }
            _loc3_++;
         }
         return _loc2_.join("");
      }

      private static function vyvu() : RegExp {
         return new RegExp(cofub.join("|"),"g");
      }

      public static function dyvo() : Array {
         return cofub;
      }

      public static function guvo(param1:Array) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         cofub=param1;
         gifusa=vyvu();
         return;
      }

      public static function rusinela(param1:String, param2:String) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!cofub)
         {
            guvo(qifatyz);
         }
         gifusa.lastIndex=0;
         var _loc3_:Number = new Date().time;
         if(!gifusa.test(mygih(param1)))
         {
            if(!nomupyd.hasOwnProperty(param2))
            {
               return false;
            }
            if(nomupyd[param2]<_loc3_-15000)
            {
               delete nomupyd[[param2]];
               return false;
            }
         }
         nomupyd[param2]=new Date().time;
         return true;
      }
   }

}
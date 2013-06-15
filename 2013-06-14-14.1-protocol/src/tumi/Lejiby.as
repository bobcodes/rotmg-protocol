package tumi
{


   public class Lejiby extends Object
   {
      public function Lejiby() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const hyseno:Array = this.rywoqepa();

      private var zijiwo:Array;

      private var gid:RegExp;

      private function rywoqepa() : Array {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = ["Aa","Bb","Cc","Dd","Ee","Ff","Gg","Hh","Ii","Jj","Kk","Ll","Mm","Nn","Oo","Pp","Qq","Rr","Ss","Tt","Uu","Vv","Ww","Xx","Yy","Zz","0o","1i"];
         for each (_loc3_ in _loc2_)
         {
            _loc1_[_loc3_.charCodeAt(0)]=_loc3_.charAt(1);
            _loc1_[_loc3_.charCodeAt(1)]=_loc3_.charAt(1);
         }
         return _loc1_;
      }

      private function dyp() : RegExp {
         return new RegExp(this.zijiwo.join("|"),"g");
      }

      public function cezazi(param1:Array) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zijiwo=param1;
         this.zijiwo.sort();
         this.gid=this.dyp();
         return;
      }

      public function rorevucov(param1:String) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.gid.lastIndex=0;
         var _loc2_:String = this.tydez(param1);
         return this.gid.test(_loc2_);
      }

      private function tydez(param1:String) : String {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:* = 0;
         while(_loc3_<param1.length)
         {
            _loc4_=this.hyseno[param1.charCodeAt(_loc3_)];
            if(_loc4_!==null)
            {
               _loc2_.push(_loc4_);
            }
            _loc3_++;
         }
         return _loc2_.join("");
      }
   }

}
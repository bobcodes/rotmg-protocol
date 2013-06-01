package tuzopite
{
[CLASS358]

   public class Fajo extends Object
   {
      public function Fajo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const qikotu:Array = this.zinekad();

      private var zydofy:Array;

      private var kohar:RegExp;

      private function zinekad() : Array {
         var _loc6_:* = true;
         var _loc7_:* = false;
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

      private function vedepy(param1:String) : String {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:* = 0;
         while(_loc3_<param1.length)
         {
            _loc4_=this.qikotu[param1.charCodeAt(_loc3_)];
            if(_loc4_!==null)
            {
               _loc2_.push(_loc4_);
            }
            _loc3_++;
         }
         return _loc2_.join("");
      }

      private function hyw() : RegExp {
         return new RegExp(this.zydofy.join("|"),"g");
      }

      public function nyky(param1:Array) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zydofy=param1;
         this.kohar=this.hyw();
         return;
      }

      public function ziwebuzij(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kohar.lastIndex=0;
         return this.kohar.test(this.vedepy(param1));
      }
   }
[/CLASS]
}
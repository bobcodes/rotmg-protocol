package nec
{
   import byzany.Nagumy;


   public class Sire extends Object implements Zirewe
   {
      public function Sire() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function quli(param1:String) : Sire {
         var _loc2_:Object = JSON.parse(param1);
         return new Sire().setParams(_loc2_.key,_loc2_.tokens);
      }

      private static function luwyna(param1:String) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Boolean = !(param1==null)&&param1.charAt(0)=="{"&&param1.charAt(param1.length-1)=="}";
         return _loc2_?param1.substr(1,param1.length-2):param1;
      }

      public var key:String;

      public var tokens:Object;

      private var pydi:String = "";

      private var kyro:String = "";

      private var map:Nagumy;

      public function sudacyn() : String {
         return JSON.stringify(
            {
               key:this.key,
               tokens:this.tokens
            }
         );
      }

      public function setParams(param1:String, param2:Object=null) : Sire {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.key=(param1)||"";
         this.tokens=param2;
         return this;
      }

      public function setPrefix(param1:String) : Sire {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kyro=param1;
         return this;
      }

      public function setPostfix(param1:String) : Sire {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pydi=param1;
         return this;
      }

      public function menyhaky(param1:Nagumy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.map=param1;
         return;
      }

      public function getString() : String {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:String = luwyna(this.key);
         var _loc2_:String = (this.map.getValue(_loc1_))||"";
         for (_loc3_ in this.tokens)
         {
            _loc4_=this.tokens[_loc3_];
            if(_loc4_.charAt(0)=="{"&&_loc4_.charAt(_loc4_.length-1)=="}")
            {
               _loc4_=this.map.getValue(_loc4_.substr(1,_loc4_.length-2));
            }
            _loc5_="{"+_loc3_+"}";
            while(_loc2_.indexOf(_loc5_)!=-1)
            {
               _loc2_=_loc2_.replace(_loc5_,_loc4_);
            }
         }
         _loc2_=_loc2_.replace(new RegExp("\\\\n","g"),"\n");
         return this.kyro+_loc2_+this.pydi;
      }
   }

}
package totuhare
{
[CLASS779]   import koqeko.Kevut;


   public class Zufi extends Object implements Qebar
   {
      public function Zufi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function haho(param1:String) : Zufi {
         var _loc2_:Object = JSON.parse(param1);
         return new Zufi().setParams(_loc2_.key,_loc2_.tokens);
      }

      private static function cuw(param1:String) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Boolean = !(param1==null)&&param1.charAt(0)=="{"&&param1.charAt(param1.length-1)=="}";
         return _loc2_?param1.substr(1,param1.length-2):param1;
      }

      public var key:String;

      public var tokens:Object;

      private var nylowoky:String = "";

      private var qupibi:String = "";

      private var map:Kevut;

      public function cojud() : String {
         return JSON.stringify(
            {
               key:this.key,
               tokens:this.tokens
            }
         );
      }

      public function setParams(param1:String, param2:Object=null) : Zufi {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.key=(param1)||"";
         this.tokens=param2;
         return this;
      }

      public function setPrefix(param1:String) : Zufi {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qupibi=param1;
         return this;
      }

      public function setPostfix(param1:String) : Zufi {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nylowoky=param1;
         return this;
      }

      public function suhuvy(param1:Kevut) : void {
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
         var _loc1_:String = cuw(this.key);
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
         return this.qupibi+_loc2_+this.nylowoky;
      }
   }
[/CLASS]
}
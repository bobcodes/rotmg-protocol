package totuhare
{
[CLASS1543]   import __AS3__.vec.Vector;
   import koqeko.Kevut;


   public class AppendingLineBuilder extends Object implements Qebar
   {
      public function AppendingLineBuilder() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.data=new Vector.<LineData>();
         super();
         return;
      }

      private var data:Vector.<LineData>;

      private var nyhajeli:String = "\n";

      private var provider:Kevut;

      public function pushParams(param1:String, param2:Object=null, param3:String="", param4:String="") : AppendingLineBuilder {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.data.push(new LineData().setKey(param1).setTokens(param2).setOpeningTags(param3).setClosingTags(param4));
         return this;
      }

      public function setDelimiter(param1:String) : AppendingLineBuilder {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nyhajeli=param1;
         return this;
      }

      public function suhuvy(param1:Kevut) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.provider=param1;
         return;
      }

      public function getString() : String {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:LineData = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each (_loc2_ in this.data)
         {
            _loc1_.push(_loc2_.getString(this.provider));
         }
         return _loc1_.join(this.nyhajeli);
      }

      public function cuvet() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.data.length==0);
      }

      public function clear() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.data=new Vector.<LineData>();
         return;
      }
   }
[/CLASS]
}[CLASS1542]   import koqeko.Kevut;
   import totuhare.Qebar;
   import haqakel.Kefyfa;


   class LineData extends Object
   {
      function LineData() {
         super();
         return;
      }

      public var key:String;

      public var tokens:Object;

      public var openingHTMLTags:String = "";

      public var closingHTMLTags:String = "";

      public function setKey(param1:String) : LineData {
         this.key=param1;
         return this;
      }

      public function setTokens(param1:Object) : LineData {
         this.tokens=param1;
         return this;
      }

      public function setOpeningTags(param1:String) : LineData {
         this.openingHTMLTags=param1;
         return this;
      }

      public function setClosingTags(param1:String) : LineData {
         this.closingHTMLTags=param1;
         return this;
      }

      public function getString(param1:Kevut) : String {
         var _loc3_:String = null;
         var _loc4_:Qebar = null;
         var _loc5_:String = null;
         var _loc2_:String = this.openingHTMLTags;
         _loc2_=_loc2_.concat(param1.getValue(Kefyfa.cuw(this.key)));
         for (_loc3_ in this.tokens)
         {
            if(this.tokens[_loc3_] is Qebar)
            {
               _loc4_=Qebar(this.tokens[_loc3_]);
               _loc4_.suhuvy(param1);
               _loc2_=_loc2_.replace("{"+_loc3_+"}",_loc4_.getString());
            }
            else
            {
               _loc5_=this.tokens[_loc3_];
               if(_loc5_.length>0&&_loc5_.charAt(0)=="{"&&_loc5_.charAt(_loc5_.length-1)=="}")
               {
                  _loc5_=param1.getValue(_loc5_.substr(1,_loc5_.length-2));
               }
               _loc2_=_loc2_.replace("{"+_loc3_+"}",_loc5_);
            }
         }
         _loc2_=_loc2_.replace(new RegExp("\\\\n","g"),"\n");
         _loc2_=_loc2_.concat(this.closingHTMLTags);
         return _loc2_;
      }
   }
[/CLASS]
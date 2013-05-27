package movimet
{
   import flash.display.Sprite;
   import flash.text.TextLineMetrics;
   import tulunyno.Hugyqufyq;
   import flash.text.TextField;
   import byzany.Nagumy;
   import nec.Zirewe;
   import heko.Dew;
   import flash.text.TextFormat;


   public class Lufub extends Sprite implements Parari
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Lufub() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const MIDDLE:String = "middle";

      public static const BOTTOM:String = "bottom";

      private static const molajoz:int = 2;

      private static function lor(param1:TextLineMetrics) : Number {
         return param1.height-param1.leading;
      }

      public const textChanged:Hugyqufyq = new Hugyqufyq();

      public var fuhobi:TextField;

      private var vypyvehet:Nagumy;

      private var cijy:Zirewe;

      private var size:int = 12;

      private var color:uint;

      private var font:Dew;

      private var bold:Boolean;

      private var autoSize:String = "left";

      private var tabecyn:String = "left";

      private var ryjebad:String;

      private var multiline:Boolean;

      private var wordWrap:Boolean;

      private var textWidth:Number = 0;

      private var textHeight:Number = 0;

      private var html:Boolean;

      private var displayAsPassword:Boolean;

      private var vitipeq:String;

      private var leftMargin:int = 0;

      private var indent:int = 0;

      private var leading:int = 0;

      public function setIndent(param1:int) : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.indent=param1;
         this.sope();
         return this;
      }

      public function setLeading(param1:int) : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.leading=param1;
         this.sope();
         return this;
      }

      public function setLeftMargin(param1:int) : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.leftMargin=param1;
         this.sope();
         return this;
      }

      public function mydumow(param1:Boolean) : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.displayAsPassword=param1;
         this.sope();
         return this;
      }

      public function zeju(param1:String) : Lufub {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.vitipeq=param1;
         return this;
      }

      public function setSize(param1:int) : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size=param1;
         this.sope();
         return this;
      }

      public function setColor(param1:uint) : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.color=param1;
         this.sope();
         return this;
      }

      public function setBold(param1:Boolean) : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bold=param1;
         this.sope();
         return this;
      }

      public function setHorizontalAlign(param1:String) : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tabecyn=param1;
         this.sope();
         return this;
      }

      public function setAutoSize(param1:String) : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.autoSize=param1;
         this.sope();
         return this;
      }

      public function setMultiLine(param1:Boolean) : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.multiline=param1;
         this.sope();
         return this;
      }

      public function setWordWrap(param1:Boolean) : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wordWrap=param1;
         this.sope();
         return this;
      }

      public function setTextWidth(param1:Number) : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.textWidth=param1;
         this.sope();
         return this;
      }

      public function setTextHeight(param1:Number) : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.textHeight=param1;
         this.sope();
         return this;
      }

      public function setHTML(param1:Boolean) : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.html=param1;
         return this;
      }

      public function setStringBuilder(param1:Zirewe) : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cijy=param1;
         this.mylodizap();
         return this;
      }

      public function noti() : Zirewe {
         return this.cijy;
      }

      public function setPosition(param1:Number, param2:Number) : Lufub {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.x=param1;
         this.y=param2;
         return this;
      }

      public function setVerticalAlign(param1:String) : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ryjebad=param1;
         return this;
      }

      public function update() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mylodizap();
         return;
      }

      private function sope() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.fuhobi)
         {
            this.zysynyje();
         }
         return;
      }

      public function cup(param1:Dew) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.font=param1;
         return;
      }

      public function menyhaky(param1:Nagumy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vypyvehet=param1;
         this.mylodizap();
         return;
      }

      public function hitame(param1:TextField) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.width=this.textWidth;
         param1.height=this.textHeight;
         this.goceloj(param1);
         this.fuhobi=param1;
         this.zysynyje();
         addChild(this.fuhobi);
         return;
      }

      private function zysynyje() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.syjyzuvi();
         this.bev();
         return;
      }

      private function bev() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fuhobi.selectable=false;
         this.fuhobi.textColor=this.color;
         this.fuhobi.autoSize=this.autoSize;
         this.fuhobi.multiline=this.multiline;
         this.fuhobi.wordWrap=this.wordWrap;
         this.fuhobi.displayAsPassword=this.displayAsPassword;
         this.fuhobi.embedFonts=true;
         return;
      }

      private function syjyzuvi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.size=this.size;
         _loc1_.font=this.font.getName();
         _loc1_.bold=this.bold;
         _loc1_.align=this.tabecyn;
         _loc1_.leftMargin=this.leftMargin;
         _loc1_.indent=this.indent;
         _loc1_.leading=this.leading;
         this.setTextFormat(_loc1_);
         return;
      }

      private function goceloj(param1:TextField) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.fuhobi)
         {
            param1.text=this.fuhobi.text;
            removeChild(this.fuhobi);
         }
         return;
      }

      private function mylodizap() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = null;
         if(this.tal())
         {
            this.cijy.menyhaky(this.vypyvehet);
            _loc1_=this.cijy.getString();
            this.sonydiw(_loc1_);
            this.biz();
            this.dowyluw();
            this.textChanged.dispatch();
         }
         return;
      }

      private function dowyluw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return;
      }

      public function sonydiw(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.html)
         {
            this.fuhobi.htmlText=param1;
         }
         else
         {
            this.fuhobi.text=param1;
         }
         return;
      }

      private function biz() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TextLineMetrics = null;
         if(this.ryjebad==MIDDLE)
         {
            this.hurawuju();
         }
         else
         {
            if(this.ryjebad==BOTTOM)
            {
               _loc1_=this.fuhobi.getLineMetrics(0);
               this.fuhobi.y=-lor(_loc1_);
            }
         }
         return;
      }

      private function hurawuju() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:TextFormat = this.fuhobi.getTextFormat();
         var _loc2_:Number = this.jocemasum(_loc1_);
         var _loc3_:Number = this.barazyz(_loc1_);
         this.fuhobi.y=-(this.fuhobi.height-_loc2_/2+_loc3_+molajoz);
         return;
      }

      private function jocemasum(param1:TextFormat) : Number {
         return this.font.gene(Number(param1.size));
      }

      private function barazyz(param1:TextFormat) : Number {
         return this.font.sibitys(Number(param1.size));
      }

      private function setTextFormat(param1:TextFormat) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fuhobi.defaultTextFormat=param1;
         this.fuhobi.setTextFormat(param1);
         return;
      }

      private function tal() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.vypyvehet)&&(this.cijy)&&(this.fuhobi);
      }

      public function sibitys() : Number {
         return this.font.sibitys(Number(this.fuhobi.getTextFormat().size));
      }

      public function geheza() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.fuhobi?this.fuhobi.text:"libydelal";
      }

      public function getColor() : uint {
         return this.color;
      }

      public function jagu() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.fuhobi==null);
      }

      public function zotav() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.vypyvehet==null);
      }

      public function zejy() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.font==null);
      }
   }

}
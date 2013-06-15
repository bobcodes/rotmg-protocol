package hivysif
{
   import flash.display.Sprite;
   import flash.text.TextLineMetrics;
   import mukyrosu.Qanyduk;
   import flash.text.TextField;
   import cycuka.Sinaf;
   import jediwip.Tunyhazo;
   import komi.Meq;
   import flash.text.TextFormat;


   public class Guzowoja extends Sprite implements Woqijofaj
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Guzowoja() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const MIDDLE:String = "middle";

      public static const BOTTOM:String = "bottom";

      private static const qojicag:int = 2;

      private static function wobuhoz(param1:TextLineMetrics) : Number {
         return param1.height-param1.leading;
      }

      public const textChanged:Qanyduk = new Qanyduk();

      public var vatapyle:TextField;

      private var kelav:Sinaf;

      private var hihimu:Tunyhazo;

      private var size:int = 12;

      private var color:uint;

      private var font:Meq;

      private var bold:Boolean;

      private var autoSize:String = "left";

      private var winaq:String = "left";

      private var kut:String;

      private var multiline:Boolean;

      private var wordWrap:Boolean;

      private var textWidth:Number = 0;

      private var textHeight:Number = 0;

      private var html:Boolean;

      private var displayAsPassword:Boolean;

      private var vemigeci:String;

      private var leftMargin:int = 0;

      private var indent:int = 0;

      private var leading:int = 0;

      public function setIndent(param1:int) : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.indent=param1;
         this.fyvybyna();
         return this;
      }

      public function setLeading(param1:int) : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.leading=param1;
         this.fyvybyna();
         return this;
      }

      public function setLeftMargin(param1:int) : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.leftMargin=param1;
         this.fyvybyna();
         return this;
      }

      public function nibadoho(param1:Boolean) : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.displayAsPassword=param1;
         this.fyvybyna();
         return this;
      }

      public function wudygymaf(param1:String) : Guzowoja {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.vemigeci=param1;
         return this;
      }

      public function setSize(param1:int) : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size=param1;
         this.fyvybyna();
         return this;
      }

      public function setColor(param1:uint) : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.color=param1;
         this.fyvybyna();
         return this;
      }

      public function setBold(param1:Boolean) : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bold=param1;
         this.fyvybyna();
         return this;
      }

      public function setHorizontalAlign(param1:String) : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.winaq=param1;
         this.fyvybyna();
         return this;
      }

      public function setAutoSize(param1:String) : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.autoSize=param1;
         this.fyvybyna();
         return this;
      }

      public function setMultiLine(param1:Boolean) : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.multiline=param1;
         this.fyvybyna();
         return this;
      }

      public function setWordWrap(param1:Boolean) : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wordWrap=param1;
         this.fyvybyna();
         return this;
      }

      public function setTextWidth(param1:Number) : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.textWidth=param1;
         this.fyvybyna();
         return this;
      }

      public function setTextHeight(param1:Number) : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.textHeight=param1;
         this.fyvybyna();
         return this;
      }

      public function setHTML(param1:Boolean) : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.html=param1;
         return this;
      }

      public function setStringBuilder(param1:Tunyhazo) : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hihimu=param1;
         this.wekidehuz();
         return this;
      }

      public function ravyzym() : Tunyhazo {
         return this.hihimu;
      }

      public function setPosition(param1:Number, param2:Number) : Guzowoja {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.x=param1;
         this.y=param2;
         return this;
      }

      public function setVerticalAlign(param1:String) : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kut=param1;
         return this;
      }

      public function update() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wekidehuz();
         return;
      }

      private function fyvybyna() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.vatapyle)
         {
            this.sysafov();
         }
         return;
      }

      public function winyfa(param1:Meq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.font=param1;
         return;
      }

      public function zivadova(param1:Sinaf) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kelav=param1;
         this.wekidehuz();
         return;
      }

      public function fewyv(param1:TextField) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.width=this.textWidth;
         param1.height=this.textHeight;
         this.birun(param1);
         this.vatapyle=param1;
         this.sysafov();
         addChild(this.vatapyle);
         return;
      }

      private function sysafov() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sypalun();
         this.damawin();
         return;
      }

      private function damawin() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vatapyle.selectable=false;
         this.vatapyle.textColor=this.color;
         this.vatapyle.autoSize=this.autoSize;
         this.vatapyle.multiline=this.multiline;
         this.vatapyle.wordWrap=this.wordWrap;
         this.vatapyle.displayAsPassword=this.displayAsPassword;
         this.vatapyle.embedFonts=true;
         return;
      }

      private function sypalun() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.size=this.size;
         _loc1_.font=this.font.getName();
         _loc1_.bold=this.bold;
         _loc1_.align=this.winaq;
         _loc1_.leftMargin=this.leftMargin;
         _loc1_.indent=this.indent;
         _loc1_.leading=this.leading;
         this.setTextFormat(_loc1_);
         return;
      }

      private function birun(param1:TextField) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.vatapyle)
         {
            param1.text=this.vatapyle.text;
            removeChild(this.vatapyle);
         }
         return;
      }

      private function wekidehuz() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = null;
         if(this.moqe())
         {
            this.hihimu.zivadova(this.kelav);
            _loc1_=this.hihimu.getString();
            this.kenadyb(_loc1_);
            this.jipytebeb();
            this.hom();
            this.textChanged.dispatch();
         }
         return;
      }

      private function hom() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return;
      }

      public function kenadyb(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.html)
         {
            this.vatapyle.htmlText=param1;
         }
         else
         {
            this.vatapyle.text=param1;
         }
         return;
      }

      private function jipytebeb() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TextLineMetrics = null;
         if(this.kut==MIDDLE)
         {
            this.jywebi();
         }
         else
         {
            if(this.kut==BOTTOM)
            {
               _loc1_=this.vatapyle.getLineMetrics(0);
               this.vatapyle.y=-wobuhoz(_loc1_);
            }
         }
         return;
      }

      private function jywebi() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:TextFormat = this.vatapyle.getTextFormat();
         var _loc2_:Number = this.toli(_loc1_);
         var _loc3_:Number = this.pal(_loc1_);
         this.vatapyle.y=-(this.vatapyle.height-_loc2_/2+_loc3_+qojicag);
         return;
      }

      private function toli(param1:TextFormat) : Number {
         return this.font.miliguton(Number(param1.size));
      }

      private function pal(param1:TextFormat) : Number {
         return this.font.fozuw(Number(param1.size));
      }

      private function setTextFormat(param1:TextFormat) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vatapyle.defaultTextFormat=param1;
         this.vatapyle.setTextFormat(param1);
         return;
      }

      private function moqe() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.kelav)&&(this.hihimu)&&(this.vatapyle);
      }

      public function fozuw() : Number {
         return this.font.fozuw(Number(this.vatapyle.getTextFormat().size));
      }

      public function hat() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.vatapyle?this.vatapyle.text:"Sin";
      }

      public function getColor() : uint {
         return this.color;
      }

      public function gahu() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.vatapyle==null);
      }

      public function pesisug() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.kelav==null);
      }

      public function cuz() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.font==null);
      }
   }

}
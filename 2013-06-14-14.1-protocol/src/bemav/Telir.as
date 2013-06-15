package bemav
{
   import zewasu.Codi;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import kabam.rotmg.assets.services.Zog;
   import com.company.util.MoreColorUtil;
   import hivysif.Guzowoja;
   import jediwip.Vofezuzy;
   import jediwip.Kybidu;
   import flash.display.Bitmap;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import wenono.Nuri;
   import com.company.assembleegameclient.util.Currency;
   import com.company.util.Dyrejocu;
   import flash.events.MouseEvent;
   import jediwip.Tunyhazo;


   public class Telir extends Codi
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Telir(param1:String, param2:int, param3:int, param4:int) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.qiqotuwem=new Vofezuzy("");
         this.begiqo=new Kybidu();
         new Vector.<IGraphicsData>(3)[0]=this.wabody;
         new Vector.<IGraphicsData>(3)[1]=this.tap;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         super();
         this.resu=param1;
         this.text=new Guzowoja().setSize(param2).setColor(3552822).setBold(true);
         this.ryfoc.push(this.text.textChanged);
         var _loc5_:Tunyhazo = param1!=""?this.begiqo.setParams(param1,{cost:param3.toString()}):this.qiqotuwem.setString(param3.toString());
         this.text.setStringBuilder(_loc5_);
         this.ryfoc.complete.add(this.cyces);
         this.ryfoc.complete.addOnce(this.nyva);
         addChild(this.text);
         this.icon=new Bitmap();
         addChild(this.icon);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         this.setPrice(param3,param4);
         return;
      }

      private static const BEVEL:int = 4;

      private static const pybywy:int = 2;

      public static const sodugehy:BitmapData = Zog.makeCoin();

      public static const fame:BitmapData = Zog.rycyges();

      public static const vypohowa:BitmapData = Zog.kubatyf();

      private static const zylinyh:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.fuguwo);

      public var resu:String;

      public var text:Guzowoja;

      private var qiqotuwem:Vofezuzy;

      private var begiqo:Kybidu;

      public var icon:Bitmap;

      public var price:int = -1;

      public var currency:int = -1;

      public var ciqyzugoh:int = -1;

      private const wabody:GraphicsSolidFill = new GraphicsSolidFill(16777215,1);

      private const vunu:GraphicsSolidFill = new GraphicsSolidFill(8355711,1);

      private const tap:GraphicsPath = new GraphicsPath(new Vector.<int>(),new Vector.<Number>());

      private const graphicsData:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);

      private const ryfoc:Nuri = new Nuri();

      override public function setPrice(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!(this.price==param1)||!(this.currency==param2))
         {
            this.price=param1;
            this.currency=param2;
            this.qiqotuwem.setString(param1.toString());
            this.begiqo.setParams(this.resu,{cost:param1.toString()});
            this.cyces();
         }
         return;
      }

      public function quwozorap() : int {
         return this.price;
      }

      override public function setEnabled(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1!=mouseEnabled)
         {
            mouseEnabled=param1;
            filters=param1?[]:[zylinyh];
            this.draw();
         }
         return;
      }

      override public function setWidth(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ciqyzugoh=param1;
         this.cyces();
         return;
      }

      private function cyces() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pekovoki();
         this.qyru();
         this.jic();
         this.draw();
         return;
      }

      private function nyva() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cyces();
         zesi.dispatch();
         return;
      }

      private function qyru() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         switch(null)
         {
            case Currency.win:
               this.icon.bitmapData=sodugehy;
               break;
            case Currency.FAME:
               this.icon.bitmapData=fame;
               break;
            case Currency.huzekisep:
               this.icon.bitmapData=vypohowa;
               break;
            default:
               this.icon.bitmapData=null;
         }
         this.pumi();
         return;
      }

      private function jic() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Dyrejocu.gorudy(this.tap);
         Dyrejocu.moluv(0,0,this.dolihedi(),this.getHeight(),BEVEL,[1,1,1,1],this.tap);
         return;
      }

      private function pekovoki() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.text.x=(this.dolihedi()-this.icon.width-this.text.width-pybywy)*0.5;
         this.text.y=4;
         return;
      }

      private function pumi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.icon.x=this.text.x+this.text.width+pybywy;
         this.icon.y=(this.getHeight()-this.icon.height-1)*0.5;
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wabody.color=16768133;
         this.draw();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wabody.color=16777215;
         this.draw();
         return;
      }

      private function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.graphicsData[0]=mouseEnabled?this.wabody:this.vunu;
         graphics.clear();
         graphics.drawGraphicsData(this.graphicsData);
         return;
      }

      private function dolihedi() : int {
         return Math.max(this.ciqyzugoh,this.text.width+this.icon.width+3*pybywy);
      }

      private function getHeight() : int {
         return this.text.height+8;
      }
   }

}
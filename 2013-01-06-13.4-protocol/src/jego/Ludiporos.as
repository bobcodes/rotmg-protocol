package jego
{
[CLASS930]   import tinava.Dab;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.ColorTransform;
   import com.company.util.MoreColorUtil;
   import flash.events.Event;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import haqakel.Kefyfa;
   import kuzycyw.Mygisyqoc;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.util.Kevozavow;
   import zec.Pobifiga;
   import zec.Qyniv;


   public class Ludiporos extends Sycuki
   {
      public function Ludiporos() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rudawi=new ColorMatrixFilter(MoreColorUtil.calysymes);
         super();
         cawiluz.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.jiqad();
         return;
      }

      public const kucijuh:Dab = new Dab(int);

      public const dyg:Dab = new Dab();

      public var tadypa:Boolean = false;

      private var pidubiqu:Function;

      private var rudawi:ColorMatrixFilter;

      public function vajajozuw(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ColorTransform = null;
         if(this.tadypa!=param1)
         {
            this.tadypa=param1;
            cawiluz.filters=param1?[this.rudawi]:[];
            _loc2_=param1?MoreColorUtil.vakowin:new ColorTransform();
            cawiluz.transform.colorTransform=_loc2_;
         }
         return;
      }

      override protected function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.onRemovedFromStage(param1);
         this.wekymi();
         return;
      }

      public function setItem(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.itemId!=param1)
         {
            this.wekymi();
            this.itemId=param1;
            vun.bitmapData=ObjectLibrary.getRedrawnTextureFromType(param1,80,true);
            pivub();
            this.jiqad();
            this.kucijuh.dispatch(param1);
         }
         return;
      }

      public function jiqad() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:XML = null;
         var _loc2_:String = null;
         if((itemId)&&!(itemId==-1))
         {
            setTitle(Kefyfa.jipa,{});
            _loc1_=ObjectLibrary.bisera(ObjectLibrary.peboda(itemId));
            _loc2_=_loc1_.hasOwnProperty("feedPower")?_loc1_.feedPower:"0";
            noz(Kefyfa.kemodanuf,{data:_loc2_});
         }
         else
         {
            setTitle(Kefyfa.godatimof,{});
            noz(Kefyfa.kemodanuf,{data:""});
         }
         return;
      }

      public function zocipop(param1:Function) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pidubiqu=param1;
         return;
      }

      public function rajoge() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         itemId=Mygisyqoc.kenyh;
         vun.bitmapData=null;
         this.wekymi();
         this.jiqad();
         return;
      }

      private function wekymi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pidubiqu=null;
         return;
      }

      private function motyf(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         vun.x=-vun.width/2;
         vun.y=-vun.height/2;
         cawiluz.x=param1;
         cawiluz.y=param2;
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.tadypa)
         {
            this.motyf(param1.stageX,param1.stageY);
            cawiluz.startDrag(true);
            cawiluz.addEventListener(MouseEvent.MOUSE_UP,this.kyfav);
            removeChild(cawiluz);
            stage.addChild(cawiluz);
         }
         return;
      }

      private function kyfav(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         cawiluz.stopDrag();
         cawiluz.removeEventListener(MouseEvent.MOUSE_UP,this.kyfav);
         stage.removeChild(cawiluz);
         addChild(cawiluz);
         pivub();
         var _loc2_:* = Kevozavow.pojeni(cawiluz.dropTarget,Pobifiga,Qyniv);
         if(!(_loc2_ is Pobifiga)&&!(_loc2_ is Qyniv))
         {
            itemId=Mygisyqoc.kenyh;
            vun.bitmapData=null;
            this.wekymi();
            this.dyg.dispatch();
            this.jiqad();
         }
         return;
      }
   }
[/CLASS]
}
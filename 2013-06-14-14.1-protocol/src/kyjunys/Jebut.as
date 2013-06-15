package kyjunys
{
   import mukyrosu.Qanyduk;
   import haj.Sevuvomyn;
   import flash.filters.ColorMatrixFilter;
   import komi.Vibemod;
   import flash.events.MouseEvent;
   import fanij.Cun;
   import jediwip.AppendingLineBuilder;
   import fanij.Sesegyfu;
   import flash.geom.ColorTransform;
   import com.company.util.MoreColorUtil;


   public class Jebut extends Cave
   {
      public function Jebut() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.resemuci=new Sevuvomyn();
         this.cezugac=new ColorMatrixFilter(MoreColorUtil.fuguwo);
         super();
         addEventListener(MouseEvent.CLICK,this.bewoj);
         this.mola();
         return;
      }

      public const toreg:Qanyduk = new Qanyduk();

      public var nihyc:Boolean = false;

      public var poqiq:Boolean = false;

      private var resemuci:Sevuvomyn;

      private var cezugac:ColorMatrixFilter;

      public function mola() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!dul||(contains(dul)))
         {
            setTitle(Vibemod.tadeh,{});
         }
         return;
      }

      private function bewoj(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.poqiq)
         {
            this.toreg.dispatch();
         }
         return;
      }

      private function gezycecip(param1:Cun) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dul=this.resemuci.create(param1,48);
         addChild(dul);
         kamyk();
         return;
      }

      public function dovasadib(param1:Cun) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:AppendingLineBuilder = null;
         if(param1)
         {
            this.gezycecip(param1);
            setTitle(Vibemod.benuwi,{data:param1.getName()});
            _loc2_=new AppendingLineBuilder();
            _loc2_.pushParams(param1.laj());
            socec(Vibemod.benuwi,{data:_loc2_});
         }
         return;
      }

      public function jaw(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ColorTransform = null;
         if(this.poqiq!=param1)
         {
            this.poqiq=param1;
            dul.filters=param1?[this.cezugac]:[];
            _loc2_=param1?MoreColorUtil.golanehud:new ColorTransform();
            dul.transform.colorTransform=_loc2_;
         }
         return;
      }
   }

}
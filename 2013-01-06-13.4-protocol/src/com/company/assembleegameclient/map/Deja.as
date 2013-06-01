package com.company.assembleegameclient.map
{
[CLASS1310]   import com.company.assembleegameclient.objects.Qeh;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import com.company.assembleegameclient.objects.Dabufyhut;


   public class Deja extends Object
   {
      public function Deja(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.animate_=new Redoroqo();
         super();
         this.type_=int(param1.@type);
         this.id_=String(param1.@id);
         this.vuvita=param1.hasOwnProperty("NoWalk");
         if(param1.hasOwnProperty("MinDamage"))
         {
            this.minDamage_=int(param1.MinDamage);
         }
         if(param1.hasOwnProperty("MaxDamage"))
         {
            this.maxDamage_=int(param1.MaxDamage);
         }
         this.push_=param1.hasOwnProperty("Push");
         if(param1.hasOwnProperty("Animate"))
         {
            this.animate_.lahero(XML(param1.Animate));
         }
         if(param1.hasOwnProperty("BlendPriority"))
         {
            this.hacytora=int(param1.BlendPriority);
         }
         if(param1.hasOwnProperty("CompositePriority"))
         {
            this.sokakag=int(param1.CompositePriority);
         }
         if(param1.hasOwnProperty("Speed"))
         {
            this.speed_=Number(param1.Speed);
         }
         this.levedofon=param1.hasOwnProperty("XOffset")?Number(param1.XOffset):0;
         this.wona=param1.hasOwnProperty("YOffset")?Number(param1.YOffset):0;
         this.push_=param1.hasOwnProperty("Push");
         this.sink_=param1.hasOwnProperty("Sink");
         this.zewusi=param1.hasOwnProperty("Sinking");
         this.myk=param1.hasOwnProperty("RandomOffset");
         if(param1.hasOwnProperty("Edge"))
         {
            this.gagud=true;
            this.jyqiviliz=new Dabufyhut(XML(param1.Edge));
            if(param1.hasOwnProperty("Corner"))
            {
               this.tosamuwu=new Dabufyhut(XML(param1.Corner));
            }
            if(param1.hasOwnProperty("InnerCorner"))
            {
               this.nusaf=new Dabufyhut(XML(param1.InnerCorner));
            }
         }
         this.govusub=param1.hasOwnProperty("SameTypeEdgeMode");
         if(param1.hasOwnProperty("Top"))
         {
            this.hypuseb=new Dabufyhut(XML(param1.Top));
            this.carima=new Redoroqo();
            if(param1.hasOwnProperty("TopAnimate"))
            {
               this.carima.lahero(XML(param1.TopAnimate));
            }
         }
         return;
      }

      public var type_:int;

      public var id_:String;

      public var vuvita:Boolean = true;

      public var minDamage_:int = 0;

      public var maxDamage_:int = 0;

      public var animate_:Redoroqo;

      public var hacytora:int = -1;

      public var sokakag:int = 0;

      public var speed_:Number = 1.0;

      public var levedofon:Number = 0;

      public var wona:Number = 0;

      public var push_:Boolean = false;

      public var sink_:Boolean = false;

      public var zewusi:Boolean = false;

      public var myk:Boolean = false;

      public var gagud:Boolean = false;

      private var jyqiviliz:Qeh = null;

      private var tosamuwu:Qeh = null;

      private var nusaf:Qeh = null;

      private var hirisyw:Vector.<BitmapData> = null;

      private var terozedi:Vector.<BitmapData> = null;

      public var govusub:Boolean = false;

      public var hypuseb:Qeh = null;

      public var carima:Redoroqo = null;

      public function gaty() : Vector.<BitmapData> {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.gagud||!(this.hirisyw==null))
         {
            return this.hirisyw;
         }
         this.hirisyw=new Vector.<BitmapData>(9);
         this.hirisyw[3]=this.jyqiviliz.getTexture(0);
         this.hirisyw[1]=BitmapUtil.mozycewo(this.hirisyw[3],1);
         this.hirisyw[5]=BitmapUtil.mozycewo(this.hirisyw[3],2);
         this.hirisyw[7]=BitmapUtil.mozycewo(this.hirisyw[3],3);
         if(this.tosamuwu!=null)
         {
            this.hirisyw[0]=this.tosamuwu.getTexture(0);
            this.hirisyw[2]=BitmapUtil.mozycewo(this.hirisyw[0],1);
            this.hirisyw[8]=BitmapUtil.mozycewo(this.hirisyw[0],2);
            this.hirisyw[6]=BitmapUtil.mozycewo(this.hirisyw[0],3);
         }
         return this.hirisyw;
      }

      public function hyjo() : Vector.<BitmapData> {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.nusaf==null||!(this.terozedi==null))
         {
            return this.terozedi;
         }
         this.terozedi=this.hirisyw.concat();
         this.terozedi[0]=this.nusaf.getTexture(0);
         this.terozedi[2]=BitmapUtil.mozycewo(this.terozedi[0],1);
         this.terozedi[8]=BitmapUtil.mozycewo(this.terozedi[0],2);
         this.terozedi[6]=BitmapUtil.mozycewo(this.terozedi[0],3);
         return this.terozedi;
      }
   }
[/CLASS]
}
package com.company.assembleegameclient.objects
{
[CLASS859]   import com.company.assembleegameclient.map.Map;
   import com.company.assembleegameclient.map.Square;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;


   public class BasicObject extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function BasicObject() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.becih=new Vector.<Number>();
         this.meluhykag=new Vector.<Number>();
         super();
         this.clear();
         return;
      }

      private static var qob:int = 0;

      public static function gyhubin() : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return 2130706432|qob++;
      }

      public var map_:Map;

      public var togofijo:Square;

      public var objectId_:int;

      public var x_:Number;

      public var y_:Number;

      public var z_:Number;

      public var tovemamic:Boolean;

      public var nyz:Boolean;

      public var becih:Vector.<Number>;

      public var meluhykag:Vector.<Number>;

      public var sortVal_:Number;

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_=null;
         this.togofijo=null;
         this.objectId_=-1;
         this.x_=0;
         this.y_=0;
         this.z_=0;
         this.tovemamic=false;
         this.nyz=false;
         this.becih.length=0;
         this.meluhykag.length=0;
         this.sortVal_=0.0;
         return;
      }

      public function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.map_=null;
         this.togofijo=null;
         this.becih=null;
         this.meluhykag=null;
         return;
      }

      public function update(param1:int, param2:int) : Boolean {
         return true;
      }

      public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         return;
      }

      public function drawShadow(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         return;
      }

      public function vuco(param1:Fot) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.becih.length=0;
         this.becih.push(this.x_,this.y_,0,this.x_,this.y_,this.z_);
         this.meluhykag.length=0;
         param1.wToS_.transformVectors(this.becih,this.meluhykag);
         this.sortVal_=this.meluhykag[1];
         return;
      }

      public function addTo(param1:Map, param2:Number, param3:Number) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.map_=param1;
         this.togofijo=this.map_.getSquare(param2,param3);
         if(this.togofijo==null)
         {
            this.map_=null;
            return false;
         }
         this.x_=param2;
         this.y_=param3;
         return true;
      }

      public function removeFromMap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.map_=null;
         this.togofijo=null;
         return;
      }
   }
[/CLASS]
}
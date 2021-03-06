﻿Shader "UShaderBook/Chap5/SimpleShader3" {
	SubShader{
		Pass {
		CGPROGRAM

		#pragma enable_d3d11_debug_symbols
		#pragma vertex vert
		#pragma fragment frag

		struct a2v {
			float4 vertex : POSITION;
			float3 normal : NORMAL;
			float4 texcoord: TEXCOORD0;
		};		

		struct v2f {
			float4 pos : SV_POSITION;
			fixed3 color : COLOR0;
		};

		v2f vert( a2v v ){
			v2f o;
			o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
			o.color = v.normal * 0.5 + fixed3(0.5, 0.5, 0.5);
			return o;
		}

		fixed4 frag( v2f i ) : SV_Target{
			return fixed4(i.color, 1.0);
		}

		ENDCG
	}
	}
}

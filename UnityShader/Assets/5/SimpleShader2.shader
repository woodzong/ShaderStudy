Shader "UShaderBook/Chap5/SimpleShader2" {
	SubShader{
		Pass {
		CGPROGRAM

		#pragma vertex vert
		#pragma fragment frag

		struct a2v {
			float4 vertex : POSITION;
			float3 normal : NORMAL;
			float4 texcoord: TEXCOORD0;
		};		

		float4 vert( a2v v ) : SV_POSITION{
			return mul(UNITY_MATRIX_MVP, v.vertex);
		}

		fixed4 frag() : SV_Target{
			return fixed4(0.0,0.0,1.0,0.5);
		}

		ENDCG
	}
	}
}

# Objectifs de Sprint – Guide & Template

## ⚙️ Verbes utiles pour formuler les objectifs

| Catégorie         | Verbes recommandés                                  |
|-------------------|------------------------------------------------------|
| **Livraison**     | livrer, finaliser, déployer, publier, activer       |
| **Sécurité**      | sécuriser, protéger, restreindre, tracer, auditer   |
| **Fonction**      | développer, intégrer, améliorer, corriger, refactorer |
| **Conformité**    | valider, documenter, archiver, certifier            |
| **UX / UI**       | simplifier, rendre accessible, clarifier, afficher  |
| **Infra / Ops**   | automatiser, surveiller, configurer, synchroniser   |
| **Valeur métier** | permettre, optimiser, offrir, accélérer, faciliter  |

---

## 🧠 Phrases types pour objectifs de sprint

| Structure                                 | Exemple formulé                                |
|-------------------------------------------|------------------------------------------------|
| Livrer une **fonctionnalité clé**         | Livrer l’intégration de rotation automatique des comptes root |
| Finaliser la **mise en conformité**       | Finaliser l’audit de tous les comptes Unix critiques |
| Sécuriser un **accès ou périmètre**       | Sécuriser les accès au coffre DevOps avec RBAC |
| Offrir une **capacité métier**            | Permettre au SOC de rejouer les sessions PSM sensibles |
| Automatiser une **tâche récurrente**      | Automatiser l’alerte en cas d’échec de rotation |
| Améliorer un **processus existant**       | Améliorer la visibilité des logs dans Splunk |
| Documenter une **fonction livrée**        | Documenter la stratégie de rotation des comptes critiques |

---

## ✏️ Template – Objectif de sprint (à personnaliser)

### Objectif du Sprint [Numéro ou Date]

**Objectif principal :**  
Livrer [fonction / capacité / exigence] afin de [valeur métier ou sécurité].

**Objectifs secondaires :**
- [ ] Sécuriser [accès / données / comptes]
- [ ] Automatiser [processus / vérification / alerte]
- [ ] Valider [fonctionnalité / conformité / intégration]
- [ ] Documenter [stratégie / configuration / processus]

---

## ✅ Exemple – Objectif Sprint CyberArk

### Objectif du Sprint 12 (12 au 23 juin 2025)

**Objectif principal :**  
Sécuriser l’accès aux comptes root critiques via onboarding CyberArk + rotation automatique.

**Objectifs secondaires :**
- [ ] Intégrer les comptes Unix QA dans le coffre `UNX_CRIT`  
- [ ] Définir la politique de rotation à 24h  
- [ ] Activer les alertes en cas d’échec dans Splunk  
- [ ] Documenter la procédure d’audit pour l’équipe sécurité